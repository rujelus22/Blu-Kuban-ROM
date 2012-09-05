.class final Lcom/google/android/youtube/app/honeycomb/tablet/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/al;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ac;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ac;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Enum;)V
    .registers 3
    .parameter

    .prologue
    .line 110
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ad;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ac;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/ac;->a(Lcom/google/android/youtube/app/honeycomb/tablet/ac;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    return-void
.end method
