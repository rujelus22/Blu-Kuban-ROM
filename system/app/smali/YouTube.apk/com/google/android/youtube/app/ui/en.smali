.class final Lcom/google/android/youtube/app/ui/en;
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
    .line 140
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/en;->b:Lcom/google/android/youtube/app/ui/el;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/en;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/en;->b:Lcom/google/android/youtube/app/ui/el;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/en;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/el;->a(Lcom/google/android/youtube/app/ui/el;Landroid/widget/EditText;)V

    .line 143
    return-void
.end method
