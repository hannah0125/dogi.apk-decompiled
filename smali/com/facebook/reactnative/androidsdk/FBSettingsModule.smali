.class public Lcom/facebook/reactnative/androidsdk/FBSettingsModule;
.super Lcom/facebook/react/bridge/BaseJavaModule;
.source "FBSettingsModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "FBSettings"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "FBSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/facebook/react/bridge/BaseJavaModule;-><init>()V

    return-void
.end method

.method public static initializeSDK()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 59
    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    return-void
.end method

.method public static setAppID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 68
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    return-void
.end method

.method public static setDataProcessingOptionsExtra([Ljava/lang/String;II)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 50
    invoke-static {p0, p1, p2}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FBSettings"

    return-object v0
.end method

.method public setDataProcessingOptions([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-static {p1, v0, v0}, Lcom/facebook/FacebookSdk;->setDataProcessingOptions([Ljava/lang/String;II)V

    return-void
.end method
