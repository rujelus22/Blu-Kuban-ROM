.class Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "SingleContactAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    #getter for: Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->access$000(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 78
    if-ne p2, p3, :cond_1d

    if-le p6, p5, :cond_1d

    .line 80
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    #getter for: Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->access$000(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, replacement:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    #setter for: Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->originalText:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->access$002(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .end local v0           #replacement:Ljava/lang/String;
    :cond_1d
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    :cond_21
    return-object v1
.end method
