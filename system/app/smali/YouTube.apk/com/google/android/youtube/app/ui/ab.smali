.class final Lcom/google/android/youtube/app/ui/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/aa;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/aa;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ab;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ab;->a:Lcom/google/android/youtube/app/ui/aa;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ab;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/aa;->a(Lcom/google/android/youtube/app/ui/aa;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/aa;->a(Lcom/google/android/youtube/app/ui/aa;Ljava/lang/String;)V

    .line 117
    return-void
.end method
