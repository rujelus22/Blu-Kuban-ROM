.class public Lcom/google/android/youtube/app/honeycomb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ah;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetProvider;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 26
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 28
    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 29
    return-void
.end method

.method public final a()[B
    .registers 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/b;->a:[B

    return-object v0
.end method

.method public final b()[B
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/b;->b:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const-string v0, "AIzaSyA8eiZmM1FaDVjRy-df2KTyQ_vz_yYM39w"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const-string v0, "414843287017.apps.googleusercontent.com"

    return-object v0
.end method
