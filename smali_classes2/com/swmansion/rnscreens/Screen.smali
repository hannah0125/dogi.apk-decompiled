.class public Lcom/swmansion/rnscreens/Screen;
.super Landroid/view/ViewGroup;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/Screen$WindowTraits;,
        Lcom/swmansion/rnscreens/Screen$ActivityState;,
        Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;,
        Lcom/swmansion/rnscreens/Screen$StackAnimation;,
        Lcom/swmansion/rnscreens/Screen$StackPresentation;
    }
.end annotation


# static fields
.field private static final sShowSoftKeyboardOnAttach:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private mActivityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

.field private mContainer:Lcom/swmansion/rnscreens/ScreenContainer;

.field private mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

.field private mGestureEnabled:Z

.field private mReplaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

.field private mScreenOrientation:Ljava/lang/Integer;

.field private mStackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field private mStackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

.field private mStatusBarAnimated:Ljava/lang/Boolean;

.field private mStatusBarColor:Ljava/lang/Integer;

.field private mStatusBarHidden:Ljava/lang/Boolean;

.field private mStatusBarStyle:Ljava/lang/String;

.field private mStatusBarTranslucent:Ljava/lang/Boolean;

.field private mTransitioning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/swmansion/rnscreens/Screen$1;

    invoke-direct {v0}, Lcom/swmansion/rnscreens/Screen$1;-><init>()V

    sput-object v0, Lcom/swmansion/rnscreens/Screen;->sShowSoftKeyboardOnAttach:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 40
    sget-object p1, Lcom/swmansion/rnscreens/Screen$StackPresentation;->PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    .line 41
    sget-object p1, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->POP:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mReplaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    .line 42
    sget-object p1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mGestureEnabled:Z

    .line 63
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/Screen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .line 20
    sget-object v0, Lcom/swmansion/rnscreens/Screen;->sShowSoftKeyboardOnAttach:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method private hasWebView(Landroid/view/ViewGroup;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 164
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 165
    instance-of v3, v2, Landroid/webkit/WebView;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    .line 167
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 168
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/swmansion/rnscreens/Screen;->hasWebView(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getActivityState()Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mActivityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-object v0
.end method

.method protected getContainer()Lcom/swmansion/rnscreens/ScreenContainer;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mContainer:Lcom/swmansion/rnscreens/ScreenContainer;

    return-object v0
.end method

.method protected getFragment()Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-object v0
.end method

.method protected getHeaderConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;
    .locals 2

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/Screen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReplaceAnimation()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mReplaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    return-object v0
.end method

.method public getScreenOrientation()Ljava/lang/Integer;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-object v0
.end method

.method public getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-object v0
.end method

.method public getStatusBarColor()Ljava/lang/Integer;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatusBarStyle()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarStyle:Ljava/lang/String;

    return-object v0
.end method

.method public isGestureEnabled()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->mGestureEnabled:Z

    return v0
.end method

.method public isStatusBarAnimated()Ljava/lang/Boolean;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarAnimated:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isStatusBarHidden()Ljava/lang/Boolean;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isStatusBarTranslucent()Ljava/lang/Boolean;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarTranslucent:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationEnd()V

    .line 77
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->onViewAnimationEnd()V

    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationStart()V

    .line 69
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->onViewAnimationStart()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Landroid/widget/TextView;

    .line 127
    invoke-virtual {v0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    sget-object v1, Lcom/swmansion/rnscreens/Screen;->sShowSoftKeyboardOnAttach:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    if-eqz p1, :cond_0

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    .line 99
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    .line 100
    new-instance p2, Lcom/swmansion/rnscreens/Screen$2;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/swmansion/rnscreens/Screen$2;-><init>(Lcom/swmansion/rnscreens/Screen;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/ReactContext;II)V

    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->mActivityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-ne p1, v0, :cond_0

    return-void

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mActivityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    .line 230
    iget-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mContainer:Lcom/swmansion/rnscreens/ScreenContainer;

    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenContainer;->notifyChildUpdate()V

    :cond_1
    return-void
.end method

.method protected setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mContainer:Lcom/swmansion/rnscreens/ScreenContainer;

    return-void
.end method

.method protected setFragment(Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-void
.end method

.method public setGestureEnabled(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mGestureEnabled:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public setReplaceAnimation(Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mReplaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    return-void
.end method

.method public setScreenOrientation(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetOrientation()V

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "landscape_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "landscape_left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "portrait_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "portrait_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 278
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    goto :goto_2

    .line 275
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x8

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    goto :goto_2

    .line 263
    :pswitch_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    goto :goto_2

    .line 269
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    goto :goto_2

    :pswitch_4
    const/4 p1, 0x7

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    goto :goto_2

    :pswitch_5
    const/16 p1, 0xa

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    goto :goto_2

    :pswitch_6
    const/16 p1, 0x9

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mScreenOrientation:Ljava/lang/Integer;

    .line 282
    :goto_2
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 283
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setOrientation(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70f1d53a -> :sswitch_6
        0x179a1 -> :sswitch_5
        0x2b77bb9b -> :sswitch_4
        0x5545f2bb -> :sswitch_3
        0x62724dbf -> :sswitch_2
        0x6728e30b -> :sswitch_1
        0x7e49df98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-void
.end method

.method public setStackPresentation(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-void
.end method

.method public setStatusBarAnimated(Ljava/lang/Boolean;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarAnimated:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatusBarColor(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 340
    invoke-static {}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance()V

    .line 343
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarColor:Ljava/lang/Integer;

    .line 344
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 345
    invoke-static {p0, p1, v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setColor(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    :cond_1
    return-void
.end method

.method public setStatusBarHidden(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 305
    invoke-static {}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance()V

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarHidden:Ljava/lang/Boolean;

    .line 309
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setHidden(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public setStatusBarStyle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 293
    invoke-static {}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance()V

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarStyle:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 298
    invoke-static {p0, p1, v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setStyle(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    :cond_1
    return-void
.end method

.method public setStatusBarTranslucent(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 320
    invoke-static {}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance()V

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->mStatusBarTranslucent:Ljava/lang/Boolean;

    .line 324
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 325
    invoke-static {p0, p1, v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setTranslucent(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->mTransitioning:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 152
    :cond_0
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->mTransitioning:Z

    .line 153
    invoke-direct {p0, p0}, Lcom/swmansion/rnscreens/Screen;->hasWebView(Landroid/view/ViewGroup;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getLayerType()I

    move-result v2

    if-eq v2, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x0

    .line 157
    invoke-super {p0, v1, p1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
