.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8$1;
.super Ljava/lang/Object;
.source "DcbDebugActivity.java"

# interfaces
.implements Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8$1;->this$1:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetails()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$800()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
