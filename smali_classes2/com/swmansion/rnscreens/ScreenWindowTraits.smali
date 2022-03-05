.class public Lcom/swmansion/rnscreens/ScreenWindowTraits;
.super Ljava/lang/Object;
.source "ScreenWindowTraits.java"


# static fields
.field private static mDefaultStatusBarColor:Ljava/lang/Integer; = null

.field private static mDidSetOrientation:Z = false

.field private static mDidSetStatusBarAppearance:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static applyDidSetOrientation()V
    .locals 1

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->mDidSetOrientation:Z

    return-void
.end method

.method protected static applyDidSetStatusBarAppearance()V
    .locals 1

    const/4 v0, 0x1

    .line 36
    sput-boolean v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->mDidSetStatusBarAppearance:Z

    return-void
.end method

.method private static checkTraitForScreen(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Z
    .locals 3

    .line 295
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits$5;->$SwitchMap$com$swmansion$rnscreens$Screen$WindowTraits:[I

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 309
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong trait passed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 307
    :pswitch_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarAnimated()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 305
    :pswitch_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarHidden()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 303
    :pswitch_2
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarTranslucent()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 301
    :pswitch_3
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getStatusBarStyle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 299
    :pswitch_4
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getStatusBarColor()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 297
    :pswitch_5
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getScreenOrientation()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static childScreenWithTraitSet(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenFragment;->getChildScreenContainers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenContainer;

    .line 282
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenContainer;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    .line 283
    invoke-static {v1, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->childScreenWithTraitSet(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    if-eqz v1, :cond_1

    .line 287
    invoke-static {v1, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->checkTraitForScreen(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static didSetOrientation()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->mDidSetOrientation:Z

    return v0
.end method

.method public static didSetStatusBarAppearance()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->mDidSetStatusBarAppearance:Z

    return v0
.end method

.method private static findParentWithTraitSet(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;
    .locals 2

    .line 263
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 265
    instance-of v0, p0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v0, :cond_0

    .line 266
    move-object v0, p0

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-static {v0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->checkTraitForScreen(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 270
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static findScreenForTrait(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 248
    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->childScreenWithTraitSet(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 253
    :cond_0
    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->checkTraitForScreen(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 258
    :cond_1
    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->findParentWithTraitSet(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    return-object p0
.end method

.method protected static setColor(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->mDefaultStatusBarColor:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->mDefaultStatusBarColor:Ljava/lang/Integer;

    .line 73
    :cond_1
    sget-object v0, Lcom/swmansion/rnscreens/Screen$WindowTraits;->COLOR:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 74
    invoke-static {p0, v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->findScreenForTrait(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ANIMATED:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 76
    invoke-static {p0, v1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->findScreenForTrait(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getStatusBarColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getStatusBarColor()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->mDefaultStatusBarColor:Ljava/lang/Integer;

    :goto_0
    if-eqz p0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarAnimated()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarAnimated()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    .line 93
    :goto_1
    new-instance v1, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;

    invoke-direct {v1, p2, p1, v0, p0}, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;-><init>(Lcom/facebook/react/bridge/ReactContext;Landroid/app/Activity;Ljava/lang/Integer;Z)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected static setHidden(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/swmansion/rnscreens/Screen$WindowTraits;->HIDDEN:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 212
    invoke-static {p0, v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->findScreenForTrait(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarHidden()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarHidden()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 220
    :goto_0
    new-instance v0, Lcom/swmansion/rnscreens/ScreenWindowTraits$4;

    invoke-direct {v0, p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits$4;-><init>(ZLandroid/app/Activity;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static setOrientation(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ORIENTATION:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 49
    invoke-static {p0, v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->findScreenForTrait(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getScreenOrientation()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getScreenOrientation()Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 59
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected static setStyle(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    sget-object p2, Lcom/swmansion/rnscreens/Screen$WindowTraits;->STYLE:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 128
    invoke-static {p0, p2}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->findScreenForTrait(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getStatusBarStyle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getStatusBarStyle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "light"

    .line 138
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_2

    .line 139
    new-instance p2, Lcom/swmansion/rnscreens/ScreenWindowTraits$2;

    invoke-direct {p2, p1, p0}, Lcom/swmansion/rnscreens/ScreenWindowTraits$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected static setTranslucent(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    sget-object v0, Lcom/swmansion/rnscreens/Screen$WindowTraits;->TRANSLUCENT:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 166
    invoke-static {p0, v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->findScreenForTrait(Lcom/swmansion/rnscreens/Screen;Lcom/swmansion/rnscreens/Screen$WindowTraits;)Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarTranslucent()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->isStatusBarTranslucent()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 174
    :goto_0
    new-instance v0, Lcom/swmansion/rnscreens/ScreenWindowTraits$3;

    invoke-direct {v0, p2, p1, p0}, Lcom/swmansion/rnscreens/ScreenWindowTraits$3;-><init>(Lcom/facebook/react/bridge/ReactContext;Landroid/app/Activity;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected static trySetWindowTraits(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 236
    invoke-static {}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->didSetOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setOrientation(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    .line 239
    :cond_0
    invoke-static {}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->didSetStatusBarAppearance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-static {p0, p1, p2}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setColor(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 241
    invoke-static {p0, p1, p2}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setStyle(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 242
    invoke-static {p0, p1, p2}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setTranslucent(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 243
    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setHidden(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
