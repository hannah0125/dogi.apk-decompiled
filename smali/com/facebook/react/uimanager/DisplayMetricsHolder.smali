.class public Lcom/facebook/react/uimanager/DisplayMetricsHolder;
.super Ljava/lang/Object;
.source "DisplayMetricsHolder.java"


# static fields
.field private static sScreenDisplayMetrics:Landroid/util/DisplayMetrics;

.field private static sWindowDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayMetricsMap(D)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sWindowDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sScreenDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "DisplayMetricsHolder must be initialized with initDisplayMetricsIfNotInitialized or initDisplayMetrics"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    sget-object v1, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sWindowDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, p0, p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getPhysicalPixelsMap(Landroid/util/DisplayMetrics;D)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "windowPhysicalPixels"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sScreenDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, p0, p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getPhysicalPixelsMap(Landroid/util/DisplayMetrics;D)Ljava/util/Map;

    move-result-object p0

    const-string/jumbo p1, "screenPhysicalPixels"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getDisplayMetricsNativeMap(D)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 3

    .line 95
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sWindowDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sScreenDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "DisplayMetricsHolder must be initialized with initDisplayMetricsIfNotInitialized or initDisplayMetrics"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 98
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 99
    sget-object v1, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sWindowDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 100
    invoke-static {v1, p0, p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getPhysicalPixelsNativeMap(Landroid/util/DisplayMetrics;D)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v1

    const-string/jumbo v2, "windowPhysicalPixels"

    .line 99
    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 101
    sget-object v1, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sScreenDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 102
    invoke-static {v1, p0, p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getPhysicalPixelsNativeMap(Landroid/util/DisplayMetrics;D)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p0

    const-string/jumbo p1, "screenPhysicalPixels"

    .line 101
    invoke-virtual {v0, p1, p0}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private static getPhysicalPixelsMap(Landroid/util/DisplayMetrics;D)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "D)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "fontScale"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "densityDpi"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getPhysicalPixelsNativeMap(Landroid/util/DisplayMetrics;D)Lcom/facebook/react/bridge/WritableNativeMap;
    .locals 4

    .line 119
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 120
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    .line 121
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    .line 122
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-string/jumbo v3, "scale"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    const-string v1, "fontScale"

    .line 123
    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 124
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double p0, p0

    const-string p2, "densityDpi"

    invoke-virtual {v0, p2, p0, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static getScreenDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 81
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sScreenDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static getWindowDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sWindowDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static initDisplayMetrics(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->setWindowDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 53
    invoke-virtual {v1, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    const-string/jumbo v0, "window"

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const-string v0, "WindowManager is null!"

    .line 55
    invoke-static {p0, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 63
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    invoke-static {v1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->setScreenDisplayMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetrics(Landroid/content/Context;)V

    return-void
.end method

.method public static setScreenDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 77
    sput-object p0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sScreenDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static setWindowDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 38
    sput-object p0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->sWindowDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method
