.class final Lcom/google/android/youtube/app/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/p;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/p;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/q;->a:Lcom/google/android/youtube/app/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/q;->a:Lcom/google/android/youtube/app/ui/p;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/ui/p;->a(Lcom/google/android/youtube/app/ui/p;Landroid/view/View;)V

    .line 98
    return-void
.end method
