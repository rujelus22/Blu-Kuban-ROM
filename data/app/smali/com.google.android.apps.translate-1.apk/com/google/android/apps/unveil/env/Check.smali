.class public Lcom/google/android/apps/unveil/env/Check;
.super Ljava/lang/Object;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/Check$ThreadCheck;,
        Lcom/google/android/apps/unveil/env/Check$FailedException;
    }
.end annotation


# static fields
.field public static final ENABLED:Z = true

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/Check;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public static checkEqual(DD)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 109
    const-string v0, "Not equal"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/Check;->checkEqual(Ljava/lang/String;DD)V

    .line 110
    return-void
.end method

.method public static checkEqual(JJ)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 97
    const-string v0, "Not equal"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/Check;->checkEqual(Ljava/lang/String;JJ)V

    .line 98
    return-void
.end method

.method public static checkEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 121
    const-string v0, "Not equal"

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/unveil/env/Check;->checkEqual(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static checkEqual(Ljava/lang/String;DD)V
    .registers 7
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 114
    cmpl-double v0, p1, p3

    if-eqz v0, :cond_28

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 117
    :cond_28
    return-void
.end method

.method public static checkEqual(Ljava/lang/String;JJ)V
    .registers 7
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 102
    cmp-long v0, p1, p3

    if-eqz v0, :cond_28

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 105
    :cond_28
    return-void
.end method

.method public static checkEqual(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 126
    if-eqz p1, :cond_4

    if-nez p2, :cond_2d

    .line 127
    :cond_4
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    .line 135
    :cond_8
    :goto_8
    return-void

    .line 130
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 132
    :cond_2d
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static checkEqual(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 90
    if-eq p1, p2, :cond_26

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 93
    :cond_26
    return-void
.end method

.method public static checkEqual(ZZ)V
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 85
    const-string v0, "Not equal"

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/unveil/env/Check;->checkEqual(Ljava/lang/String;ZZ)V

    .line 86
    return-void
.end method

.method public static checkFalse(Ljava/lang/String;Z)V
    .registers 2
    .parameter "message"
    .parameter "condition"

    .prologue
    .line 78
    if-eqz p1, :cond_5

    .line 79
    invoke-static {p0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 81
    :cond_5
    return-void
.end method

.method public static checkFalse(Z)V
    .registers 2
    .parameter "condition"

    .prologue
    .line 72
    const-string v0, "Condition was true"

    invoke-static {v0, p0}, Lcom/google/android/apps/unveil/env/Check;->checkFalse(Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public static checkGreater(DD)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 187
    const-string v0, "Not greater than"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/Check;->checkGreater(Ljava/lang/String;DD)V

    .line 188
    return-void
.end method

.method public static checkGreater(Ljava/lang/String;DD)V
    .registers 7
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 192
    cmpl-double v0, p1, p3

    if-gtz v0, :cond_28

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 195
    :cond_28
    return-void
.end method

.method public static checkGreaterOrEqual(DD)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 199
    const-string v0, "Not greater than or equal to"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/Check;->checkGreaterOrEqual(Ljava/lang/String;DD)V

    .line 200
    return-void
.end method

.method public static checkGreaterOrEqual(JJ)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 211
    const-string v0, "Not greater than or equal to"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/Check;->checkGreaterOrEqual(Ljava/lang/String;JJ)V

    .line 212
    return-void
.end method

.method public static checkGreaterOrEqual(Ljava/lang/String;DD)V
    .registers 7
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 204
    cmpl-double v0, p1, p3

    if-gez v0, :cond_28

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 207
    :cond_28
    return-void
.end method

.method public static checkGreaterOrEqual(Ljava/lang/String;JJ)V
    .registers 7
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 216
    cmp-long v0, p1, p3

    if-gez v0, :cond_28

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 219
    :cond_28
    return-void
.end method

.method public static checkLess(DD)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 151
    const-string v0, "Not less than"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/Check;->checkLess(Ljava/lang/String;DD)V

    .line 152
    return-void
.end method

.method public static checkLess(Ljava/lang/String;DD)V
    .registers 7
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 156
    cmpg-double v0, p1, p3

    if-ltz v0, :cond_28

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 159
    :cond_28
    return-void
.end method

.method public static checkLessOrEqual(DD)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 163
    const-string v0, "Not less than or equal to"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/Check;->checkLessOrEqual(Ljava/lang/String;DD)V

    .line 164
    return-void
.end method

.method public static checkLessOrEqual(JJ)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 175
    const-string v0, "Not less than or equal to"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/Check;->checkLessOrEqual(Ljava/lang/String;JJ)V

    .line 176
    return-void
.end method

.method public static checkLessOrEqual(Ljava/lang/String;DD)V
    .registers 7
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 168
    cmpg-double v0, p1, p3

    if-lez v0, :cond_28

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 171
    :cond_28
    return-void
.end method

.method public static checkLessOrEqual(Ljava/lang/String;JJ)V
    .registers 7
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 180
    cmp-long v0, p1, p3

    if-lez v0, :cond_28

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 183
    :cond_28
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)V
    .registers 2
    .parameter "o"

    .prologue
    .line 223
    if-nez p0, :cond_7

    .line 224
    const-string v0, "Unexpected null argument"

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 226
    :cond_7
    return-void
.end method

.method public static checkSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 139
    const-string v0, "Not same"

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/unveil/env/Check;->checkSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public static checkSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "message"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 144
    if-eq p1, p2, :cond_26

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 147
    :cond_26
    return-void
.end method

.method public static checkTrue(Ljava/lang/String;Z)V
    .registers 2
    .parameter "message"
    .parameter "condition"

    .prologue
    .line 56
    if-nez p1, :cond_5

    .line 57
    invoke-static {p0}, Lcom/google/android/apps/unveil/env/Check;->fail(Ljava/lang/String;)V

    .line 59
    :cond_5
    return-void
.end method

.method public static checkTrue(Z)V
    .registers 2
    .parameter "condition"

    .prologue
    .line 50
    const-string v0, "Condition was false"

    invoke-static {v0, p0}, Lcom/google/android/apps/unveil/env/Check;->checkTrue(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method private static fail(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/apps/unveil/env/Check$FailedException;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/env/Check$FailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
