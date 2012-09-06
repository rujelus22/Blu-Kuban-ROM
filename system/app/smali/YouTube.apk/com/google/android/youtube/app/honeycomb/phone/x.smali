.class final Lcom/google/android/youtube/app/honeycomb/phone/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/dg;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 2
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/x;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/x;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->b(Lcom/google/android/youtube/app/honeycomb/phone/t;Z)Z

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/x;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->q(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_channel_store_turorial"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 302
    return-void
.end method
