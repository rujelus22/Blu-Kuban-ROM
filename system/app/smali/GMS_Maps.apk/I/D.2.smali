.class public Li/D;
.super Li/E;
.source "SourceFile"


# static fields
.field private static a:Li/D;


# instance fields
.field private b:Li/aa;


# direct methods
.method constructor <init>(Lac/p;Landroid/content/Context;Li/aa;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Li/E;-><init>(Lac/p;Landroid/content/Context;)V

    .line 55
    iput-object p3, p0, Li/D;->b:Li/aa;

    .line 56
    return-void
.end method

.method public static a(Lac/p;Landroid/content/Context;Li/aa;)Li/D;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    sget-object v0, Li/D;->a:Li/D;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Li/D;

    invoke-direct {v0, p0, p1, p2}, Li/D;-><init>(Lac/p;Landroid/content/Context;Li/aa;)V

    sput-object v0, Li/D;->a:Li/D;

    .line 70
    :cond_b
    sget-object v0, Li/D;->a:Li/D;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string v0, "/cannedtts/"

    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_c

    .line 110
    const-string v0, "voice_instructions.xml"

    :goto_5
    return-object v0

    .line 105
    :pswitch_6
    const-string v0, "voice_instructions_imperial.xml"

    goto :goto_5

    .line 107
    :pswitch_9
    const-string v0, "voice_instructions_yards.xml"

    goto :goto_5

    .line 103
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method a(Li/v;)V
    .registers 8
    .parameter

    .prologue
    .line 91
    invoke-virtual {p1}, Li/v;->a()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/A;

    .line 93
    invoke-virtual {v0}, Li/A;->a()Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 95
    const-string v3, "g"

    invoke-static {v3}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Li/D;->b:Li/aa;

    invoke-virtual {v0}, Li/A;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v0, v4, v2, v5}, Li/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_8

    .line 99
    :cond_34
    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string v0, "TtsVoiceBundles"

    return-object v0
.end method
