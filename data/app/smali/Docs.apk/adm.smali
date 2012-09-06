.class public Ladm;
.super Ljava/io/IOException;
.source "HttpResponseException.java"


# instance fields
.field private final a:I

.field private final transient a:Ladc;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ladl;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-static {p1}, Ladm;->a(Ladl;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ladm;-><init>(Ladl;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ladl;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ladl;->a()I

    move-result v0

    iput v0, p0, Ladm;->a:I

    .line 86
    invoke-virtual {p1}, Ladl;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ladm;->a:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Ladl;->a()Ladc;

    move-result-object v0

    iput-object v0, p0, Ladm;->a:Ladc;

    .line 88
    return-void
.end method

.method private static a(Ladl;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 142
    invoke-static {p0}, Ladm;->a(Ladl;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string v0, ""

    .line 145
    :try_start_6
    invoke-virtual {p0}, Ladl;->c()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_1e

    move-result-object v0

    .line 150
    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    .line 151
    sget-object v2, Laey;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :catch_1e
    move-exception v2

    .line 148
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a
.end method

.method public static a(Ladl;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {p0}, Ladl;->a()I

    move-result v1

    .line 164
    if-eqz v1, :cond_e

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    :cond_e
    invoke-virtual {p0}, Ladl;->b()Ljava/lang/String;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_1e

    .line 169
    if-eqz v1, :cond_1b

    .line 170
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_1e
    return-object v0
.end method
