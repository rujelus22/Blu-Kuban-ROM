.class final Lcom/locationlabs/v3client/feature/SoundQuencher$a;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/feature/SoundQuencher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->d:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method

.method public static a()Lcom/locationlabs/v3client/feature/SoundQuencher$a;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;

    invoke-direct {v0}, Lcom/locationlabs/v3client/feature/SoundQuencher$a;-><init>()V

    .line 32
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v1

    .line 33
    const-string v2, "SoundQuencher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    const-string v2, "userRingerMode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a:I

    .line 36
    const-string v2, "quenchers"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    .line 37
    const-string v2, "allowers"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    const-string v1, "userRingerMode"

    iget v2, p0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    const-string v1, "quenchers"

    iget v2, p0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    const-string v1, "allowers"

    iget v2, p0, Lcom/locationlabs/v3client/feature/SoundQuencher$a;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method
