.class final Lcom/google/android/youtube/app/ui/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/l;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 36
    check-cast p1, Lcom/google/android/youtube/core/model/Event;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method
