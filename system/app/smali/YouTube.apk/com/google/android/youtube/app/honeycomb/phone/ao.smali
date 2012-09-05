.class final Lcom/google/android/youtube/app/honeycomb/phone/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/bl;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/an;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/an;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ao;->a:Lcom/google/android/youtube/app/honeycomb/phone/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ao;->a:Lcom/google/android/youtube/app/honeycomb/phone/an;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/an;->finish()V

    .line 42
    return-void
.end method
