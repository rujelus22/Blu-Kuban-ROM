.class public LadH;
.super Ljava/lang/Object;
.source "JsonHttpParser.java"

# interfaces
.implements Ladg;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:LadN;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(LadN;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    const-string v0, "application/json"

    invoke-direct {p0, p1, v0}, LadH;-><init>(LadN;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(LadN;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LadN;

    iput-object v0, p0, LadH;->a:LadN;

    .line 82
    iput-object p2, p0, LadH;->a:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static a(LadN;Ladl;)LadQ;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, Ladl;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 120
    :try_start_4
    invoke-virtual {p0, v1}, LadN;->a(Ljava/io/InputStream;)LadQ;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, LadQ;->a()LadT;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_12

    .line 122
    const/4 v1, 0x0

    .line 125
    if-eqz v1, :cond_11

    .line 126
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_11
    return-object v0

    .line 125
    :catchall_12
    move-exception v0

    if-eqz v1, :cond_18

    .line 126
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_18
    throw v0
.end method


# virtual methods
.method public a(Ladl;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ladl;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, LadH;->a:LadN;

    invoke-static {v0, p1}, LadH;->a(LadN;Ladl;)LadQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, LadQ;->a(Ljava/lang/Class;LadK;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, LadH;->a:Ljava/lang/String;

    return-object v0
.end method
