.class public Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;
.super Lcom/facebook/reactnative/androidsdk/FBSDKCallbackManagerBaseJavaModule;
.source "FBShareDialogModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "FBShareDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/reactnative/androidsdk/FBShareDialogModule$ShareDialogCallback;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "FBShareDialog"


# instance fields
.field private mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

.field private mShouldFailOnError:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/reactnative/androidsdk/FBActivityEventListener;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/facebook/reactnative/androidsdk/FBSDKCallbackManagerBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/reactnative/androidsdk/FBActivityEventListener;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 72
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    if-nez v1, :cond_0

    .line 73
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/share/widget/ShareDialog;->canShow(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)Z

    move-result p1

    .line 72
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 71
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "No current activity."

    .line 77
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FBShareDialog"

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/share/widget/ShareDialog$Mode;->valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/ShareDialog$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-void
.end method

.method public setShouldFailOnError(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 104
    iput-boolean p1, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShouldFailOnError:Z

    return-void
.end method

.method public show(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v1

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule$ShareDialogCallback;

    invoke-direct {v2, p0, p2}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule$ShareDialogCallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 86
    iget-boolean p2, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShouldFailOnError:Z

    invoke-virtual {v0, p2}, Lcom/facebook/share/widget/ShareDialog;->setShouldFailOnDataError(Z)V

    .line 87
    iget-object p2, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    if-eqz p2, :cond_0

    .line 88
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "No current activity."

    .line 93
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
