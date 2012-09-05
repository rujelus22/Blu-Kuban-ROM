.class final Lcom/google/android/youtube/app/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/j;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/j;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/k;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/k;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/j;Landroid/view/View;)V

    .line 97
    return-void
.end method
