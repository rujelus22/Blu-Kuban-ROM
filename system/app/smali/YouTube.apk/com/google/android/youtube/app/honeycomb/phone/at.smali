.class final Lcom/google/android/youtube/app/honeycomb/phone/at;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/utils/o;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/as;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/as;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/o;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/at;->b:Lcom/google/android/youtube/app/honeycomb/phone/as;

    iput-object p7, p0, Lcom/google/android/youtube/app/honeycomb/phone/at;->a:Lcom/google/android/youtube/core/utils/o;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 79
    check-cast p1, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/at;->a:Lcom/google/android/youtube/core/utils/o;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/utils/o;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
