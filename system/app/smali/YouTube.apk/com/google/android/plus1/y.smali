.class final Lcom/google/android/plus1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/w;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/w;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/plus1/y;->a:Lcom/google/android/plus1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/plus1/y;->a:Lcom/google/android/plus1/w;

    invoke-static {v0}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/ad;)V

    .line 213
    return-void
.end method
