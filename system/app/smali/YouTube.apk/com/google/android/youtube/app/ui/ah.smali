.class final Lcom/google/android/youtube/app/ui/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/ui/aa;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/aa;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ah;->b:Lcom/google/android/youtube/app/ui/aa;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ah;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ah;->b:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/aa;->a(Lcom/google/android/youtube/app/ui/aa;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ah;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ah;->b:Lcom/google/android/youtube/app/ui/aa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/aa;->b(Lcom/google/android/youtube/app/ui/aa;Z)V

    .line 234
    :cond_1c
    return-void
.end method
