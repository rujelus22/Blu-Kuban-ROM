.class final Lcom/google/android/youtube/app/ui/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bl;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bl;->a:Lcom/google/android/youtube/app/ui/bd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/bd;->c(Z)V

    .line 701
    return-void
.end method
