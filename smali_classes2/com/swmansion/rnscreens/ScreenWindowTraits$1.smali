.class Lcom/swmansion/rnscreens/ScreenWindowTraits$1;
.super Lcom/facebook/react/bridge/GuardedRunnable;
.source "ScreenWindowTraits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenWindowTraits;->setColor(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$animated:Z

.field final synthetic val$color:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/app/Activity;Ljava/lang/Integer;Z)V
    .locals 0

    .line 94
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;->val$color:Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;->val$animated:Z

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedRunnable;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method public runGuarded()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;->val$activity:Landroid/app/Activity;

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 101
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    .line 102
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;->val$color:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/swmansion/rnscreens/ScreenWindowTraits$1$1;

    invoke-direct {v1, p0}, Lcom/swmansion/rnscreens/ScreenWindowTraits$1$1;-><init>(Lcom/swmansion/rnscreens/ScreenWindowTraits$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$1;->val$animated:Z

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 117
    :goto_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
