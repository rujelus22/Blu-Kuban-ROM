.class final Lcom/google/android/youtube/app/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/u;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/v;->a:Lcom/google/android/youtube/app/ui/u;

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
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/v;->a:Lcom/google/android/youtube/app/ui/u;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/v;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/u;->a(Lcom/google/android/youtube/app/ui/u;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/u;->a(Lcom/google/android/youtube/app/ui/u;Ljava/lang/String;)V

    .line 117
    return-void
.end method
