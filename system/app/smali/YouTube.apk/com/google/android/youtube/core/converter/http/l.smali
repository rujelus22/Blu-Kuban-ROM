.class final Lcom/google/android/youtube/core/converter/http/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/g;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/g;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/l;->a:Lcom/google/android/youtube/core/converter/http/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 84
    check-cast p1, Lcom/google/android/youtube/core/model/Category;

    check-cast p2, Lcom/google/android/youtube/core/model/Category;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
