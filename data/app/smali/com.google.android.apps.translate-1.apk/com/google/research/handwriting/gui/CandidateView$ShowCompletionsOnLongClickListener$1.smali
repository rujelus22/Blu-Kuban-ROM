.class Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$1;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;


# direct methods
.method constructor <init>(Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener$1;->this$1:Lcom/google/research/handwriting/gui/CandidateView$ShowCompletionsOnLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    .prologue
    .line 283
    const/4 v0, 0x2

    const-string v1, "OnDismiss"

    const-string v2, "hit"

    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method
