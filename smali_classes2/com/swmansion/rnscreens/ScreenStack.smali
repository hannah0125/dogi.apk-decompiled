.class public Lcom/swmansion/rnscreens/ScreenStack;
.super Lcom/swmansion/rnscreens/ScreenContainer;
.source "ScreenStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/rnscreens/ScreenContainer<",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACK_STACK_TAG:Ljava/lang/String; = "RN_SCREEN_LAST"


# instance fields
.field private final drawingOpPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;"
        }
    .end annotation
.end field

.field private final drawingOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;"
        }
    .end annotation
.end field

.field private isDetachingCurrentScreen:Z

.field private final mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

.field private final mDismissed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/swmansion/rnscreens/ScreenStackFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

.field private mRemovalTransitionStarted:Z

.field private final mStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

.field private previousChildrenCount:I

.field private reverseLastTwoChildren:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 28
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStack$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStack$1;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 41
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStack$2;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStack$2;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    .line 51
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    .line 52
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    .line 53
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->previousChildrenCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/rnscreens/ScreenStack;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    return-void
.end method

.method static synthetic access$600(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->performDraw(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V

    return-void
.end method

.method private dispatchOnFinishTransitioning()V
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 146
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 147
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/swmansion/rnscreens/StackFinishTransitioningEvent;

    .line 148
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/StackFinishTransitioningEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private drawAndRelease()V
    .locals 3

    const/4 v0, 0x0

    .line 436
    :goto_0
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    .line 438
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->draw()V

    .line 439
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static isSystemAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)Z
    .locals 1

    .line 60
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;

    move-result-object p0

    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v0

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-eq v0, v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object p0

    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private obtainDrawingOp()Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;-><init>(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStack$1;)V

    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    return-object v0
.end method

.method private performDraw(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V
    .locals 4

    .line 468
    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->access$200(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->access$300(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->access$400(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)J

    move-result-wide v2

    invoke-super {p0, v0, v1, v2, v3}, Lcom/swmansion/rnscreens/ScreenContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    return-void
.end method

.method private setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 395
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "RN_SCREEN_LAST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 397
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 398
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 399
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq p1, v0, :cond_3

    .line 405
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 407
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 408
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 410
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 412
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected bridge synthetic adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    return-object p1
.end method

.method protected adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 1

    .line 97
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    return-object v0
.end method

.method public dismiss(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->markUpdated()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 446
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 449
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->previousChildrenCount:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 450
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->previousChildrenCount:I

    .line 454
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 455
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 458
    :cond_1
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->drawAndRelease()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->obtainDrawingOp()Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->set(Landroid/graphics/Canvas;Landroid/view/View;J)Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->endViewTransition(Landroid/view/View;)V

    .line 132
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    .line 134
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    :cond_0
    return-void
.end method

.method public getRootScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 5

    .line 86
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stack has no root screen set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected notifyContainerUpdate()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 364
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->onContainerUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onAttachedToWindow()V

    .line 120
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mBackStackListener:Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 104
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mLifecycleCallbacks:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 105
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    const-string v2, "RN_SCREEN_LAST"

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onDetachedFromWindow()V

    return-void
.end method

.method public onViewAppearTransitionEnd()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    :cond_0
    return-void
.end method

.method protected performUpdate()V
    .locals 12

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    .line 180
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-ltz v1, :cond_2

    .line 181
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 182
    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v4, :cond_0

    move-object v4, v6

    goto :goto_1

    :cond_0
    move-object v5, v6

    .line 188
    :goto_1
    invoke-static {v6}, Lcom/swmansion/rnscreens/ScreenStack;->isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 198
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 201
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 206
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 207
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 208
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getReplaceAnimation()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    move-result-object v1

    sget-object v3, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->POP:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    if-eq v1, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    .line 209
    :goto_4
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v3

    goto :goto_6

    :cond_5
    if-nez v1, :cond_7

    if-eqz v4, :cond_7

    .line 217
    sget-object v3, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 218
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v1

    sget-object v6, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-eq v1, v6, :cond_7

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->isNested()Z

    move-result v1

    if-nez v1, :cond_7

    .line 219
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dispatchOnWillAppear()V

    .line 220
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dispatchOnAppear()V

    goto :goto_5

    .line 223
    :cond_6
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 226
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v3

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v1, 0x1

    :goto_6
    const/16 v6, 0x1001

    if-eqz v3, :cond_11

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v1, :cond_c

    .line 234
    sget-object v10, Lcom/swmansion/rnscreens/ScreenStack$4;->$SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation:[I

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v2, :cond_b

    if-eq v10, v9, :cond_a

    if-eq v10, v8, :cond_9

    if-eq v10, v7, :cond_8

    goto/16 :goto_7

    .line 249
    :cond_8
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_fade_from_bottom:I

    sget v9, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_350:I

    .line 250
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    .line 244
    :cond_9
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_bottom:I

    sget v9, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_medium:I

    .line 245
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    .line 240
    :cond_a
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_left:I

    sget v9, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_right:I

    .line 241
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    .line 236
    :cond_b
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_right:I

    sget v9, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_left:I

    .line 237
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    :cond_c
    const/16 v6, 0x2002

    .line 255
    sget-object v10, Lcom/swmansion/rnscreens/ScreenStack$4;->$SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation:[I

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v2, :cond_10

    if-eq v10, v9, :cond_f

    if-eq v10, v8, :cond_e

    if-eq v10, v7, :cond_d

    goto :goto_7

    .line 270
    :cond_d
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_250:I

    sget v9, Lcom/swmansion/rnscreens/R$anim;->rns_fade_to_bottom:I

    .line 271
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    .line 265
    :cond_e
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_no_animation_medium:I

    sget v9, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_bottom:I

    .line 266
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    .line 261
    :cond_f
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_right:I

    sget v9, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_left:I

    .line 262
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_7

    .line 257
    :cond_10
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    sget v8, Lcom/swmansion/rnscreens/R$anim;->rns_slide_in_from_left:I

    sget v9, Lcom/swmansion/rnscreens/R$anim;->rns_slide_out_to_right:I

    .line 258
    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 277
    :cond_11
    :goto_7
    sget-object v7, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-ne v3, v7, :cond_12

    const/4 v6, 0x0

    .line 280
    :cond_12
    sget-object v7, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-ne v3, v7, :cond_13

    const/16 v6, 0x1003

    :cond_13
    if-eqz v3, :cond_14

    .line 284
    invoke-static {v3}, Lcom/swmansion/rnscreens/ScreenStack;->isSystemAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 285
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    :cond_14
    if-eqz v1, :cond_15

    if-eqz v4, :cond_15

    .line 291
    invoke-static {v4}, Lcom/swmansion/rnscreens/ScreenStack;->needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-nez v5, :cond_15

    .line 300
    iput-boolean v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    .line 304
    :cond_15
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 305
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 306
    :cond_17
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_8

    .line 310
    :cond_18
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-ne v3, v5, :cond_1a

    goto :goto_a

    :cond_1a
    if-eq v3, v4, :cond_19

    .line 317
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 318
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    :cond_1b
    :goto_a
    if-eqz v5, :cond_1e

    .line 323
    invoke-virtual {v5}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 327
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v2, :cond_1d

    if-ne v3, v5, :cond_1c

    const/4 v2, 0x0

    .line 335
    :cond_1d
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    .line 336
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v7

    invoke-virtual {v6, v7, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    new-instance v6, Lcom/swmansion/rnscreens/ScreenStack$3;

    invoke-direct {v6, p0, v4}, Lcom/swmansion/rnscreens/ScreenStack$3;-><init>(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    .line 337
    invoke-virtual {v3, v6}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    :cond_1e
    if-eqz v4, :cond_1f

    .line 345
    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 346
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getOrCreateTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 349
    :cond_1f
    iput-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 351
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 354
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->tryCommitTransaction()V

    .line 356
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mTopScreen:Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v0, :cond_20

    .line 357
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenStack;->setupBackHandlerIfNeeded(Lcom/swmansion/rnscreens/ScreenStackFragment;)V

    :cond_20
    return-void
.end method

.method protected removeAllScreens()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 161
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeAllScreens()V

    return-void
.end method

.method protected removeScreenAt(I)V
    .locals 2

    .line 153
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenAt(I)Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mDismissed:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeScreenAt(I)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 428
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->isDetachingCurrentScreen:Z

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->reverseLastTwoChildren:Z

    .line 432
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->startViewTransition(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->mRemovalTransitionStarted:Z

    return-void
.end method
