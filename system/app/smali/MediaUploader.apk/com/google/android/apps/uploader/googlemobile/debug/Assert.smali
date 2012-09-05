.class public final Lcom/google/android/apps/uploader/googlemobile/debug/Assert;
.super Ljava/lang/Object;


# static fields
.field private static final FAIL_REASON:Ljava/lang/String; = "explicit assertion failure"

.field private static final NEGATIVE:Z = false

.field private static final POSITIVE:Z = true


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertEquals(JJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertEquals(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;ZZ)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertEquals(ZZ)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkTrue(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertFalse(Z)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertFalse(Ljava/lang/String;Z)V

    return-void
.end method

.method public static assertNotEquals(JJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertNotEquals(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;JJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;ZZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNotEquals(ZZ)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertNotEquals(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkNull(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkNull(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkTrue(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertTrue(Z)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method private static checkEquality(JJZ)Ljava/lang/String;
    .registers 7

    cmp-long v0, p0, p2

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    if-ne v0, p4, :cond_b

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p4}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 4

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    const/4 v0, 0x1

    :goto_b
    if-ne v0, p2, :cond_11

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    :cond_11
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private static checkEquality(ZZZ)Ljava/lang/String;
    .registers 5

    if-ne p0, p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    if-ne v0, p2, :cond_9

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p2}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static checkNull(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_7

    const/4 v0, 0x1

    :goto_3
    if-ne v0, p1, :cond_9

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failNull(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 4

    if-ne p0, p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    if-ne v0, p2, :cond_9

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static checkTrue(ZZ)Ljava/lang/String;
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failTrue(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static fail()V
    .registers 3

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;

    const-string v1, "explicit assertion failure"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fail(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;

    const-string v1, "explicit assertion failure"

    invoke-static {v1, p0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static failEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "did not expect ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method private static failIfReason(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_c

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;

    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private static failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    if-eqz p0, :cond_c

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private static failNull(Z)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "expected null"

    :goto_5
    return-object v0

    :cond_6
    const-string v0, "did not expect null"

    goto :goto_5
.end method

.method private static failSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected instance ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "did not expect instance ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method private static failTrue(Z)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "expected true"

    :goto_5
    return-object v0

    :cond_6
    const-string v0, "did not expect true"

    goto :goto_5
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    move-object v0, p0

    goto :goto_19
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xassertEquals(JJLjava/lang/String;Ljava/lang/String;I)V
    .registers 15

    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertEquals(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p5, p6, p7}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(ZZLjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertEquals(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertFalse(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkTrue(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertFalse(ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertFalse(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(JJLjava/lang/String;Ljava/lang/String;I)V
    .registers 15

    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertNotEquals(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p5, p6, p7}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkEquality(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(ZZLjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertNotEquals(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkNull(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertNull(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNull(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkNull(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertTrue(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->checkTrue(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertTrue(ZLjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->xassertTrue(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xfail(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;

    const-string v1, "explicit assertion failure"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static xfail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;

    const-string v1, "explicit assertion failure"

    invoke-static {v1, p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/AssertionError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
