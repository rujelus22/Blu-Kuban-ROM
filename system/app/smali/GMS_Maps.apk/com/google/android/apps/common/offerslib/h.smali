.class Lcom/google/android/apps/common/offerslib/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/common/offerslib/g;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/g;)V
    .registers 2
    .parameter

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/h;->a:Lcom/google/android/apps/common/offerslib/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/h;->a:Lcom/google/android/apps/common/offerslib/g;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->u()V

    .line 1029
    return-void
.end method
