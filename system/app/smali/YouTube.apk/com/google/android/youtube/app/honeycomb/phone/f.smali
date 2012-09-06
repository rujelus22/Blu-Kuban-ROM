.class final Lcom/google/android/youtube/app/honeycomb/phone/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/as;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Enum;)V
    .registers 5
    .parameter

    .prologue
    .line 96
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/f;->a:Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;)Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/BrowseActivity;Lcom/google/android/youtube/core/async/GDataRequestFactory$StatisticFilter;Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;)V

    return-void
.end method
