.class final Lcom/google/android/youtube/app/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/m;


# instance fields
.field private final a:Lcom/google/android/youtube/app/a;

.field private final b:Lcom/google/android/youtube/core/Analytics;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/Analytics;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/l;->a:Lcom/google/android/youtube/app/a;

    .line 148
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/l;->b:Lcom/google/android/youtube/core/Analytics;

    .line 149
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Channel;)V
    .registers 4
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/l;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "OpenChannelFromSearchResults"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/l;->a:Lcom/google/android/youtube/app/a;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Channel;->userProfileUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;)V

    .line 154
    return-void
.end method
