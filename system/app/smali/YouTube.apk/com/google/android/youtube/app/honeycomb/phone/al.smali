.class final Lcom/google/android/youtube/app/honeycomb/phone/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/o;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/al;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/al;->b:Ljava/lang/String;

    .line 787
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 782
    check-cast p1, Lcom/google/android/youtube/core/model/Subscription;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Subscription;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
