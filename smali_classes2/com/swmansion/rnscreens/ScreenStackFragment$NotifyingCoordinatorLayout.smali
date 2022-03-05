.class Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "ScreenStackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyingCoordinatorLayout"
.end annotation


# instance fields
.field private final mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mFragment:Lcom/swmansion/rnscreens/ScreenFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 201
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout$1;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 219
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-object p0
.end method


# virtual methods
.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    .line 232
    instance-of v0, p1, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 234
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 239
    invoke-super {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method
