.class public Lcom/petpeotalk/dogibogi_viewer_android/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "DogibogiViewerApp"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
