.class final Lcom/google/android/youtube/app/ui/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bc;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bc;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bg;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bc;->c(Lcom/google/android/youtube/app/ui/bc;)V

    .line 137
    return-void
.end method
