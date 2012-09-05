.class final Lcom/google/android/youtube/app/ui/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/android/youtube/app/ui/da;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/da;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dc;->b:Lcom/google/android/youtube/app/ui/da;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/dc;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dc;->b:Lcom/google/android/youtube/app/ui/da;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/dc;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/da;->a(Lcom/google/android/youtube/app/ui/da;Landroid/widget/EditText;)V

    .line 129
    return-void
.end method
