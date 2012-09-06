.class final Lcom/google/android/youtube/app/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/am;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/c/c;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/c/c;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/youtube/app/c/d;->b:Lcom/google/android/youtube/app/c/c;

    iput-object p2, p0, Lcom/google/android/youtube/app/c/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/c/d;->a:Ljava/lang/String;

    return-object v0
.end method
