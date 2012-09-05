.class final Lcom/google/android/youtube/core/converter/http/co;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ci;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ci;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/co;->a:Lcom/google/android/youtube/core/converter/http/ci;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/p;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 74
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->email(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 75
    return-void
.end method
