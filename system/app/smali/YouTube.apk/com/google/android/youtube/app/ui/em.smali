.class final Lcom/google/android/youtube/app/ui/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/android/youtube/app/ui/el;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/el;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/em;->b:Lcom/google/android/youtube/app/ui/el;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/em;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/em;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method
