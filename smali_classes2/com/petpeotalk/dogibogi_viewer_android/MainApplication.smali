.class public Lcom/petpeotalk/dogibogi_viewer_android/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 20
    new-instance v0, Lcom/petpeotalk/dogibogi_viewer_android/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lcom/petpeotalk/dogibogi_viewer_android/MainApplication$1;-><init>(Lcom/petpeotalk/dogibogi_viewer_android/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/petpeotalk/dogibogi_viewer_android/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method private static initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/petpeotalk/dogibogi_viewer_android/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 61
    invoke-virtual {p0}, Lcom/petpeotalk/dogibogi_viewer_android/MainApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/petpeotalk/dogibogi_viewer_android/MainApplication;->initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V

    return-void
.end method
