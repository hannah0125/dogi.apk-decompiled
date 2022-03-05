.class final Lcom/oblador/storereview/StoreReviewModule$requestReview$1;
.super Ljava/lang/Object;
.source "StoreReviewModule.kt"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oblador/storereview/StoreReviewModule;->requestReview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "request",
        "Lcom/google/android/play/core/tasks/Task;",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        "kotlin.jvm.PlatformType",
        "onComplete"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $manager:Lcom/google/android/play/core/review/ReviewManager;

.field final synthetic this$0:Lcom/oblador/storereview/StoreReviewModule;


# direct methods
.method constructor <init>(Lcom/oblador/storereview/StoreReviewModule;Lcom/google/android/play/core/review/ReviewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oblador/storereview/StoreReviewModule$requestReview$1;->this$0:Lcom/oblador/storereview/StoreReviewModule;

    iput-object p2, p0, Lcom/oblador/storereview/StoreReviewModule$requestReview$1;->$manager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "request.result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    .line 28
    iget-object v0, p0, Lcom/oblador/storereview/StoreReviewModule$requestReview$1;->this$0:Lcom/oblador/storereview/StoreReviewModule;

    invoke-static {v0}, Lcom/oblador/storereview/StoreReviewModule;->access$getCurrentActivity(Lcom/oblador/storereview/StoreReviewModule;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/oblador/storereview/StoreReviewModule$requestReview$1;->$manager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-interface {v1, v0, p1}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    const-string v0, "manager.launchReviewFlow(activity, reviewInfo)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/oblador/storereview/StoreReviewModule$requestReview$1$1;->INSTANCE:Lcom/oblador/storereview/StoreReviewModule$requestReview$1$1;

    check-cast v0, Lcom/google/android/play/core/tasks/OnCompleteListener;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return-void
.end method
