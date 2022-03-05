.class public Lcom/swmansion/rnscreens/ScreenViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ScreenViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/swmansion/rnscreens/Screen;",
        ">;"
    }
.end annotation


# static fields
.field protected static final REACT_CLASS:Ljava/lang/String; = "RNSScreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 24
    new-instance v0, Lcom/swmansion/rnscreens/Screen;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/Screen;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 14
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "registrationName"

    const-string v1, "onDismissed"

    .line 133
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v1, "onWillAppear"

    .line 135
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    const-string v1, "onAppear"

    .line 137
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    const-string v1, "onWillDisappear"

    .line 139
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    const-string v1, "onDisappear"

    .line 141
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    const-string v1, "onFinishTransitioning"

    .line 143
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    const-string v2, "topDismissed"

    const-string v4, "topWillAppear"

    const-string v6, "topAppear"

    const-string v8, "topWillDisappear"

    const-string v10, "topDisappear"

    const-string v12, "topFinishTransitioning"

    .line 131
    invoke-static/range {v2 .. v13}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNSScreen"

    return-object v0
.end method

.method public setActivityState(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Integer;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "activityState"
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    sget-object p2, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 39
    sget-object p2, Lcom/swmansion/rnscreens/Screen$ActivityState;->TRANSITIONING_OR_BELOW_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 41
    sget-object p2, Lcom/swmansion/rnscreens/Screen$ActivityState;->ON_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setGestureEnabled(Lcom/swmansion/rnscreens/Screen;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "gestureEnabled"
    .end annotation

    .line 85
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setGestureEnabled(Z)V

    return-void
.end method

.method public setReplaceAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "replaceAnimation"
    .end annotation

    if-eqz p2, :cond_1

    const-string v0, "pop"

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "push"

    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 93
    sget-object p2, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->PUSH:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setReplaceAnimation(Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;)V

    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    sget-object p2, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->POP:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setReplaceAnimation(Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setScreenOrientation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "screenOrientation"
    .end annotation

    .line 99
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setScreenOrientation(Ljava/lang/String;)V

    return-void
.end method

.method public setStackAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "stackAnimation"
    .end annotation

    if-eqz p2, :cond_6

    const-string v0, "default"

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "simple_push"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "none"

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V

    goto :goto_1

    :cond_1
    const-string v0, "fade"

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V

    goto :goto_1

    :cond_2
    const-string v0, "slide_from_right"

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_RIGHT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V

    goto :goto_1

    :cond_3
    const-string v0, "slide_from_left"

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_LEFT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V

    goto :goto_1

    :cond_4
    const-string v0, "slide_from_bottom"

    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V

    goto :goto_1

    :cond_5
    const-string v0, "fade_from_bottom"

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 79
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V

    goto :goto_1

    .line 67
    :cond_6
    :goto_0
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setStackPresentation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "stackPresentation"
    .end annotation

    const-string v0, "push"

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackPresentation;->PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackPresentation(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V

    goto :goto_2

    :cond_0
    const-string v0, "modal"

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "containedModal"

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "fullScreenModal"

    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "formSheet"

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "transparentModal"

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "containedTransparentModal"

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown presentation type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_3
    :goto_0
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackPresentation;->TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackPresentation(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V

    goto :goto_2

    .line 54
    :cond_4
    :goto_1
    sget-object p2, Lcom/swmansion/rnscreens/Screen$StackPresentation;->MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStackPresentation(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V

    :goto_2
    return-void
.end method

.method public setStatusBarAnimation(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarAnimation"
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "none"

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStatusBarAnimated(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setStatusBarColor(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarColor"
    .end annotation

    .line 110
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStatusBarColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public setStatusBarHidden(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarHidden"
    .end annotation

    .line 125
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStatusBarHidden(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setStatusBarStyle(Lcom/swmansion/rnscreens/Screen;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarStyle"
    .end annotation

    .line 115
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStatusBarStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setStatusBarTranslucent(Lcom/swmansion/rnscreens/Screen;Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "statusBarTranslucent"
    .end annotation

    .line 120
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/Screen;->setStatusBarTranslucent(Ljava/lang/Boolean;)V

    return-void
.end method
