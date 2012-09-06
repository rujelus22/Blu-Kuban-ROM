.class Lcom/google/android/apps/plus/views/TypeableAudienceView$3;
.super Ljava/lang/Object;
.source "TypeableAudienceView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/TypeableAudienceView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/TypeableAudienceView;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$3;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteFromBeginning(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$3;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    if-ne p1, v0, :cond_b

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$3;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->removeLastChip()V

    .line 291
    :cond_b
    return-void
.end method
