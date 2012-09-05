.class final Lcom/google/android/youtube/plus1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/plus1/a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/plus1/a;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/youtube/plus1/c;->b:Lcom/google/android/youtube/plus1/a;

    iput-object p2, p0, Lcom/google/android/youtube/plus1/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/plus1/c;->a:Ljava/lang/String;

    return-object v0
.end method
