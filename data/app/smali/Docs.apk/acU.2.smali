.class public abstract LacU;
.super Ljava/lang/Object;
.source "AbstractInputStreamContent.java"

# interfaces
.implements Lada;


# instance fields
.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, LacU;->a:Z

    .line 66
    invoke-virtual {p0, p1}, LacU;->a(Ljava/lang/String;)LacU;

    .line 67
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LacU;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 167
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0, p1}, Lalx;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 199
    if-eqz p2, :cond_8

    .line 200
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 203
    :cond_8
    return-void

    .line 199
    :catchall_9
    move-exception v0

    if-eqz p2, :cond_f

    .line 200
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_f
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)LacU;
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, LacU;->a:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public abstract a()Ljava/io/InputStream;
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, LacU;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, LacU;->a()Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, LacU;->a:Z

    invoke-static {v0, p1, v1}, LacU;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 85
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 86
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, LacU;->a:Ljava/lang/String;

    return-object v0
.end method
