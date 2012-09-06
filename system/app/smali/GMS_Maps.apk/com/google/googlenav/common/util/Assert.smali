.class public final Lcom/google/googlenav/common/util/Assert;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/util/Assert;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/googlenav/common/util/Assert;->b(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;JJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    cmp-long v0, p1, p3

    if-eqz v0, :cond_2a

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "values not equal, expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2a
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 826
    if-eqz p1, :cond_22

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "object is not null ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/common/util/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_22
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    if-eqz p0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_19
    invoke-static {p1}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 126
    if-eqz p1, :cond_7

    .line 127
    const-string v0, "condition was true"

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_7
    return-void
.end method

.method public static assertEquals(JJ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;JJ)V

    .line 217
    return-void
.end method

.method public static assertFalse(Z)V
    .registers 2
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method public static assertLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 945
    if-nez p1, :cond_7

    .line 946
    const-string v0, "object is null"

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_a
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_7 .. :try_end_a} :catch_b

    .line 961
    :goto_a
    return-void

    .line 958
    :catch_b
    move-exception v0

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitor on ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is not held by current thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static assertNotEquals(Ljava/lang/String;JJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    cmp-long v0, p1, p3

    if-nez v0, :cond_20

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "values equal, did not expect ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_20
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 861
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/common/util/Assert;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 838
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    if-nez p1, :cond_7

    .line 104
    const-string v0, "condition was false"

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_7
    return-void
.end method

.method public static assertTrue(Z)V
    .registers 2
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/common/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_6

    .line 74
    :catch_6
    move-exception v0

    .line 75
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Assert common"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    new-instance v0, Lcom/google/googlenav/common/util/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/util/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 849
    if-nez p1, :cond_7

    .line 850
    const-string v0, "object is null"

    invoke-static {p0, v0}, Lcom/google/googlenav/common/util/Assert;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_7
    return-void
.end method
