.class public LacQ;
.super Ladm;
.source "GoogleJsonResponseException.java"


# instance fields
.field private final transient a:LacP;

.field private final transient a:LadN;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(LadN;Ladl;LacP;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p2, p4}, Ladm;-><init>(Ladl;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, LacQ;->a:LadN;

    .line 76
    iput-object p3, p0, LacQ;->a:LacP;

    .line 77
    return-void
.end method

.method public static a(LadN;Ladl;)LacQ;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :try_start_4
    invoke-virtual {p1}, Ladl;->a()Z

    move-result v0

    if-nez v0, :cond_a8

    sget-object v0, LadM;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ladl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lade;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {p1}, Ladl;->a()Ljava/io/InputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_ad

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 121
    :try_start_1c
    invoke-virtual {p1}, Ladl;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, LadN;->a(Ljava/io/InputStream;)LadQ;
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_93
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_7a

    move-result-object v3

    .line 122
    :try_start_24
    invoke-virtual {v3}, LadQ;->b()LadT;

    move-result-object v0

    .line 124
    if-nez v0, :cond_2e

    .line 125
    invoke-virtual {v3}, LadQ;->a()LadT;

    move-result-object v0

    .line 128
    :cond_2e
    if-eqz v0, :cond_c8

    .line 130
    const-string v0, "error"

    invoke-virtual {v3, v0}, LadQ;->a(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, LadQ;->b()LadT;

    move-result-object v0

    sget-object v2, LadT;->d:LadT;

    if-eq v0, v2, :cond_c8

    .line 132
    const-class v0, LacP;

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, LadQ;->a(Ljava/lang/Class;LadK;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LacP;
    :try_end_46
    .catchall {:try_start_24 .. :try_end_46} :catchall_b6
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_46} :catch_be

    .line 133
    :try_start_46
    invoke-virtual {v0}, LacP;->a()Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_b9
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_c2

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 140
    :goto_4d
    if-nez v3, :cond_6f

    .line 141
    :try_start_4f
    invoke-virtual {p1}, Ladl;->a()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_75

    .line 154
    :cond_52
    :goto_52
    invoke-static {p1}, Ladm;->a(Ladl;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-static {v0}, LafZ;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 156
    sget-object v3, Laey;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_65
    new-instance v0, LacQ;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, LacQ;-><init>(LadN;Ladl;LacP;Ljava/lang/String;)V

    return-object v0

    .line 142
    :cond_6f
    if-nez v1, :cond_52

    .line 143
    :try_start_71
    invoke-virtual {v3}, LadQ;->a()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_52

    .line 149
    :catch_75
    move-exception v2

    .line 151
    :goto_76
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 136
    :catch_7a
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-object v0, v1

    .line 138
    :goto_7e
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_b9

    .line 140
    if-nez v3, :cond_8a

    .line 141
    :try_start_83
    invoke-virtual {p1}, Ladl;->a()V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_52

    .line 142
    :cond_8a
    if-nez v0, :cond_c4

    .line 143
    invoke-virtual {v3}, LadQ;->a()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8f} :catch_b1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_52

    .line 140
    :catchall_93
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    :goto_96
    if-nez v3, :cond_a2

    .line 141
    :try_start_98
    invoke-virtual {p1}, Ladl;->a()V

    .line 143
    :cond_9b
    :goto_9b
    throw v0

    .line 149
    :catch_9c
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_76

    .line 142
    :cond_a2
    if-nez v2, :cond_9b

    .line 143
    invoke-virtual {v3}, LadQ;->a()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a7} :catch_9c

    goto :goto_9b

    .line 147
    :cond_a8
    :try_start_a8
    invoke-virtual {p1}, Ladl;->c()Ljava/lang/String;
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ad

    move-result-object v0

    goto :goto_52

    .line 149
    :catch_ad
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_76

    :catch_b1
    move-exception v2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_76

    .line 140
    :catchall_b6
    move-exception v0

    move-object v2, v1

    goto :goto_96

    :catchall_b9
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_96

    .line 136
    :catch_be
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_7e

    :catch_c2
    move-exception v2

    goto :goto_7e

    :cond_c4
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_52

    :cond_c8
    move-object v0, v1

    goto :goto_4d
.end method

.method public static a(LadN;Ladh;)Ladl;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p1}, Ladh;->d()Z

    move-result v0

    .line 195
    if-eqz v0, :cond_d

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ladh;->c(Z)Ladh;

    .line 198
    :cond_d
    invoke-virtual {p1}, Ladh;->a()Ladl;

    move-result-object v1

    .line 199
    invoke-virtual {p1, v0}, Ladh;->c(Z)Ladh;

    .line 200
    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Ladl;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 201
    :cond_1c
    return-object v1

    .line 203
    :cond_1d
    invoke-static {p0, v1}, LacQ;->a(LadN;Ladl;)LacQ;

    move-result-object v0

    throw v0
.end method
