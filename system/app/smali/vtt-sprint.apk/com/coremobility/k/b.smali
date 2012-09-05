.class public final Lcom/coremobility/k/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/b/e;


# static fields
.field private static a:[Lcom/coremobility/k/c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coremobility/k/c;

    new-instance v1, Lcom/coremobility/k/c;

    const-string v2, "vnotes_db"

    invoke-direct {v1, v2, v3}, Lcom/coremobility/k/c;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/k/c;

    const-string v2, "vnotes_db_ex"

    invoke-direct {v1, v2, v4}, Lcom/coremobility/k/c;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremobility/integration/b/d;I)I
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-ltz p1, :cond_71

    const/4 v0, 0x7

    if-ge p1, v0, :cond_71

    move v0, v10

    :goto_8
    if-eqz v0, :cond_8a

    :try_start_a
    new-instance v1, Lcom/coremobility/integration/h/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/h/d;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)V

    new-instance v2, Lcom/coremobility/integration/b/a;

    invoke-direct {v2}, Lcom/coremobility/integration/b/a;-><init>()V

    const-string v3, "is_deleted"

    iget-object v0, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, v2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_45

    const-string v3, "dir_id"

    iget-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, v2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dir_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnotes"

    invoke-virtual {p0, v1, v2, v0}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5d} :catch_73

    move-result v8

    if-lez v8, :cond_6f

    :try_start_60
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-wide/16 v0, 0x0

    const-string v2, "delete_bulk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6f} :catch_86

    :cond_6f
    move v0, v8

    :goto_70
    return v0

    :cond_71
    move v0, v9

    goto :goto_8

    :catch_73
    move-exception v0

    move-object v1, v0

    move v0, v9

    :goto_76
    const/16 v2, 0x1c

    const-string v3, "EmptyFolder Exception %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_70

    :catch_86
    move-exception v0

    move-object v1, v0

    move v0, v8

    goto :goto_76

    :cond_8a
    move v0, v9

    goto :goto_70
.end method

.method private static a(Lcom/coremobility/integration/b/d;IIILjava/lang/String;)I
    .registers 10

    new-instance v1, Lcom/coremobility/integration/b/a;

    invoke-direct {v1}, Lcom/coremobility/integration/b/a;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "is_deleted"

    iget-object v3, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eq p1, p2, :cond_3e

    if-ltz p2, :cond_45

    const/4 v0, 0x7

    if-ge p2, v0, :cond_45

    const/4 v0, 0x1

    :goto_31
    if-eqz v0, :cond_3e

    const-string v0, "dir_id"

    iget-object v3, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3e
    const-string v0, "vnotes"

    invoke-virtual {p0, v0, v1, v2}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I
    .registers 12

    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/16 v9, 0x1c

    const/4 v2, 0x0

    if-eqz p1, :cond_23

    :try_start_9
    new-instance v1, Lcom/coremobility/integration/b/a;

    invoke-direct {v1, p1}, Lcom/coremobility/integration/b/a;-><init>(Lcom/coremobility/integration/b/a;)V

    :goto_e
    const-string v4, "record_id"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    const/16 v1, 0x1c

    const-string v4, "VnotesMime INSERT Missing Record ID"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_22
    return v0

    :cond_23
    new-instance v1, Lcom/coremobility/integration/b/a;

    invoke-direct {v1}, Lcom/coremobility/integration/b/a;-><init>()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_28} :catch_29

    goto :goto_e

    :catch_29
    move-exception v1

    const-string v4, "VnotesMime INSERT Exception: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v9, v4, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    :cond_38
    :try_start_38
    const-string v4, "file_type"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4d

    const/16 v1, 0x1c

    const-string v4, "VnotesMime INSERT Missing File Type"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    :cond_4d
    const-string v4, "filename_only"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    const/16 v1, 0x1c

    const-string v4, "VnotesMime INSERT Missing Filename"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    :cond_62
    iget-object v4, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    monitor-enter v4
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_68} :catch_29

    :try_start_68
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->c()V

    const-string v5, "vnotes_mime"

    invoke-virtual {p0, v5, v1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-gez v1, :cond_8b

    const/16 v1, 0x1c

    const-string v7, "VnotesMime INSERT Failed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V

    move v1, v2

    :goto_83
    if-eqz v1, :cond_88

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_88
    monitor-exit v4

    long-to-int v0, v5

    goto :goto_22

    :cond_8b
    cmp-long v1, v5, v7

    if-nez v1, :cond_a1

    const/16 v1, 0x1c

    const-string v7, "VnotesMime INSERT abort, duplicate"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_9c
    .catchall {:try_start_68 .. :try_end_9c} :catchall_9e

    move v1, v2

    goto :goto_83

    :catchall_9e
    move-exception v1

    :try_start_9f
    monitor-exit v4

    throw v1
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a1} :catch_29

    :cond_a1
    move v1, v3

    goto :goto_83
.end method

.method public static a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;Lcom/coremobility/integration/b/a;)I
    .registers 13

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_1b

    const/16 v1, 0x1c

    :try_start_7
    const-string v2, "Invalid input %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_18

    const-string v0, "null"

    :goto_11
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    :goto_17
    return v0

    :cond_18
    const-string v0, "valid"

    goto :goto_11

    :cond_1b
    const-string v3, "dir_id"

    iget-object v4, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "dir_id"

    iget-object v4, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    :cond_30
    const-string v3, "status"

    iget-object v4, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "status"

    iget-object v4, p1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    :cond_45
    if-eqz p2, :cond_8a

    const-string v3, "record_id"

    iget-object v4, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5e

    const/16 v0, 0x1c

    const-string v1, "VnotesMime should not specfiy Record ID"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_17

    :cond_5e
    const-string v3, "file_type"

    iget-object v4, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing File Type"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_17

    :cond_74
    const-string v3, "filename_only"

    iget-object v4, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing Filename"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_17

    :cond_8a
    iget-object v3, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    monitor-enter v3
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_90} :catch_fb

    :try_start_90
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_f8

    :try_start_93
    const-string v4, "vnotes"

    invoke-virtual {p0, v4, p1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gtz v4, :cond_aa

    const/16 v0, 0x1c

    const-string v4, "Vnotes INSERT Failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_aa
    if-eqz p2, :cond_cf

    long-to-int v4, v1

    const-string v5, "record_id"

    iget-object v6, p2, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "vnotes_mime"

    invoke-virtual {p0, v4, p2}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_cf

    const/16 v0, 0x1c

    const-string v4, "VnotesMime INSERT Failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_ce
    .catchall {:try_start_93 .. :try_end_ce} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_ce} :catch_db

    const/4 v0, 0x0

    :cond_cf
    move-wide v8, v1

    move v2, v0

    move-wide v0, v8

    :goto_d2
    if-eqz v2, :cond_f2

    :try_start_d4
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->d()V

    :goto_d7
    monitor-exit v3

    long-to-int v0, v0

    goto/16 :goto_17

    :catch_db
    move-exception v0

    const/16 v4, 0x1c

    const-string v5, "InsertVnotes Exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-wide v8, v1

    move v2, v0

    move-wide v0, v8

    goto :goto_d2

    :cond_f2
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_f5
    .catchall {:try_start_d4 .. :try_end_f5} :catchall_f8

    const-wide/16 v0, -0x1

    goto :goto_d7

    :catchall_f8
    move-exception v0

    :try_start_f9
    monitor-exit v3

    throw v0
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fb} :catch_fb

    :catch_fb
    move-exception v0

    const/16 v1, 0x1c

    const-string v2, "InsertVnotes Exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto/16 :goto_17
.end method

.method public static a(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I
    .registers 7

    const/4 v4, 0x3

    const/4 v0, 0x0

    new-instance v1, Lcom/coremobility/integration/h/d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v4, p1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v3, 0x6

    invoke-static {p0, v3, v4, v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;IIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget-object v0, v1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11
.end method

.method public static a(Lcom/coremobility/integration/b/d;ZLcom/coremobility/integration/b/a;)I
    .registers 20

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x1

    const-wide/16 v11, -0x1

    if-eqz p2, :cond_8b

    :try_start_9
    new-instance v1, Lcom/coremobility/integration/b/a;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/coremobility/integration/b/a;-><init>(Lcom/coremobility/integration/b/a;)V

    :goto_10
    const-string v4, "dir_id"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "dir_id"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_26
    const-string v4, "status"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string v4, "status"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_3c
    const-string v4, "filename_only"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "filename_only"

    iget-object v5, v1, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v16, v4, v5

    monitor-enter v16
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_55} :catch_91

    :try_start_55
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_e5

    :try_start_58
    const-string v4, "vnotes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5f} :catch_cd

    move-result-wide v14

    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-gtz v1, :cond_a5

    const/16 v1, 0x1c

    :try_start_68
    const-string v2, "Vnotes INSERT Failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_70} :catch_e8

    move-wide v8, v11

    move-wide v2, v14

    :goto_72
    if-eqz v13, :cond_77

    :try_start_74
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_77
    monitor-exit v16
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_e5

    if-eqz p1, :cond_89

    if-eqz v13, :cond_89

    :try_start_7c
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v10, "insert"

    long-to-int v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V

    :cond_89
    long-to-int v1, v2

    :goto_8a
    return v1

    :cond_8b
    new-instance v1, Lcom/coremobility/integration/b/a;

    invoke-direct {v1}, Lcom/coremobility/integration/b/a;-><init>()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_90} :catch_91

    goto :goto_10

    :catch_91
    move-exception v1

    const/16 v2, 0x1c

    const-string v3, "InsertVnotes Exception %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    goto :goto_8a

    :cond_a5
    if-eqz p1, :cond_f2

    :try_start_a7
    const-string v2, "insert"

    long-to-int v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v10}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J
    :try_end_b4
    .catchall {:try_start_a7 .. :try_end_b4} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b4} :catch_e8

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_f0

    const/16 v3, 0x1c

    :try_start_bd
    const-string v4, "Changes INSERT Failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_c9
    .catchall {:try_start_bd .. :try_end_c9} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c9} :catch_eb

    :goto_c9
    move-wide v8, v1

    move v13, v3

    move-wide v2, v14

    goto :goto_72

    :catch_cd
    move-exception v1

    :goto_ce
    const/16 v4, 0x1c

    :try_start_d0
    const-string v5, "InsertVnotes Exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v4, v5, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_e3
    .catchall {:try_start_d0 .. :try_end_e3} :catchall_e5

    move-wide v8, v11

    goto :goto_72

    :catchall_e5
    move-exception v1

    :try_start_e6
    monitor-exit v16

    throw v1
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e8} :catch_91

    :catch_e8
    move-exception v1

    move-wide v2, v14

    goto :goto_ce

    :catch_eb
    move-exception v3

    move-wide v11, v1

    move-object v1, v3

    move-wide v2, v14

    goto :goto_ce

    :cond_f0
    move v3, v13

    goto :goto_c9

    :cond_f2
    move-wide v1, v11

    move v3, v13

    goto :goto_c9
.end method

.method public static a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I
    .registers 33

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x1

    const/16 v19, -0x1

    const/16 v18, -0x1

    new-instance v22, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v23, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    const-string v11, ""

    const/4 v13, -0x1

    new-instance v24, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    const-wide/16 v14, -0x1

    const/16 v4, 0x1c

    :try_start_33
    const-string v6, "update table is %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v7, v9

    invoke-static {v4, v6, v7}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "vnotes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1b2

    const-string v7, "vnotes"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    if-eqz p1, :cond_32c

    const-string v4, "dir_id"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    const-string v4, "dir_id"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    :cond_6d
    const-string v4, "status"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    const-string v4, "status"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    :cond_87
    if-gtz p3, :cond_12d

    const/16 p1, 0x0

    const/16 v4, 0x1c

    const-string v9, "Change Updates Not Done for RecId %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v12

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, p1

    move/from16 p1, v8

    :goto_a3
    monitor-enter v20
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_a4} :catch_2de

    :try_start_a4
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_2db

    :try_start_a7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_2db
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b0} :catch_2be

    move-result v17

    if-nez v21, :cond_b5

    if-eqz p1, :cond_31c

    :cond_b5
    :try_start_b5
    const-string v5, "update"

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_2b6

    const/4 v9, 0x0

    :goto_d1
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_2ba

    const/4 v10, 0x0

    :goto_d7
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v4, p0

    move/from16 v6, p3

    invoke-static/range {v4 .. v13}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J
    :try_end_e8
    .catchall {:try_start_b5 .. :try_end_e8} :catchall_2db
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_e8} :catch_30e

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_318

    const/16 v6, 0x1c

    :try_start_f1
    const-string v7, "Changes INSERT Failed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_fd
    .catchall {:try_start_f1 .. :try_end_fd} :catchall_2db
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_fd} :catch_312

    :goto_fd
    move/from16 v14, v17

    :goto_ff
    if-eqz v6, :cond_104

    :try_start_101
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_104
    monitor-exit v20
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_2db

    if-eqz v21, :cond_2f3

    if-eqz v6, :cond_2f3

    :try_start_109
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v6, "update"

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v7, p3

    move/from16 v10, v19

    move/from16 v11, v18

    invoke-static/range {v4 .. v11}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V

    :cond_12b
    :goto_12b
    move v4, v14

    :goto_12c
    return v4

    :cond_12d
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z

    move-result v4

    if-nez v4, :cond_157

    const/16 p1, 0x0

    const/16 v4, 0x1c

    const-string v9, "Change Updates Not Done for RecId %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v12

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, p1

    move/from16 p1, v8

    goto/16 :goto_a3

    :cond_157
    const/4 v9, 0x0

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_16d

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v19

    if-eq v0, v4, :cond_16d

    move/from16 v9, p1

    :cond_16d
    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_328

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v18

    if-eq v0, v4, :cond_328

    :goto_180
    const/16 v4, 0x1c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updates with update_changes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " RecId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, p1

    move/from16 p1, v8

    goto/16 :goto_a3

    :cond_1b2
    const-string v4, "vnotes_mime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2a6

    const-string v7, "vnotes_mime"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v8, 0x0

    if-eqz p1, :cond_321

    const-string v4, "mime_guid"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1de

    const-string v4, "mime_guid"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_1de
    const-string v4, "transcribe_rate"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f8

    const-string v4, "transcribe_rate"

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :cond_1f8
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "transcribe_rate"

    aput-object v10, v4, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mime_guid = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "vnotes_mime"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9, v4, v12}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v4

    if-nez v4, :cond_241

    const/4 v4, 0x0

    :goto_225
    if-nez v4, :cond_261

    const/16 p1, 0x0

    const/16 v4, 0x1c

    const-string v9, "Change Updates Mime table Not Done for RecId %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v12

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, v8

    goto/16 :goto_a3

    :cond_241
    invoke-virtual {v4}, Lcom/coremobility/integration/b/b;->b()I

    move-result v9

    if-nez v9, :cond_24c

    invoke-virtual {v4}, Lcom/coremobility/integration/b/b;->a()V

    const/4 v4, 0x0

    goto :goto_225

    :cond_24c
    invoke-virtual {v4}, Lcom/coremobility/integration/b/b;->c()Z

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v24

    iput-object v9, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/coremobility/integration/b/b;->a()V

    const/4 v4, 0x1

    goto :goto_225

    :cond_261
    invoke-static {v11}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_278

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v13, v4, :cond_278

    const/4 v4, -0x1

    if-ne v13, v4, :cond_278

    const/16 p1, 0x0

    :cond_278
    const/16 v4, 0x1c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updates Mime with update_changes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Guid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, v8

    goto/16 :goto_a3

    :cond_2a6
    const/16 v4, 0x1c

    const-string v5, "VnotesDB Delete, Invalid Table %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_2b3} :catch_2de

    const/4 v4, 0x0

    goto/16 :goto_12c

    :cond_2b6
    move/from16 v9, v19

    goto/16 :goto_d1

    :cond_2ba
    move/from16 v10, v18

    goto/16 :goto_d7

    :catch_2be
    move-exception v4

    :goto_2bf
    const/16 v6, 0x1c

    :try_start_2c1
    const-string v7, "Update Exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_2d4
    .catchall {:try_start_2c1 .. :try_end_2d4} :catchall_2db

    move-wide/from16 v25, v14

    move v14, v5

    move-wide/from16 v4, v25

    goto/16 :goto_ff

    :catchall_2db
    move-exception v4

    :try_start_2dc
    monitor-exit v20

    throw v4
    :try_end_2de
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_2de} :catch_2de

    :catch_2de
    move-exception v4

    const/16 v5, 0x1c

    const-string v6, "Update Exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto/16 :goto_12c

    :cond_2f3
    if-eqz p1, :cond_12b

    if-eqz v6, :cond_12b

    :try_start_2f7
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v9, "update"

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-wide v7, v4

    move/from16 v10, p3

    invoke-static/range {v7 .. v13}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;ILjava/lang/String;II)V
    :try_end_30c
    .catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_30c} :catch_2de

    goto/16 :goto_12b

    :catch_30e
    move-exception v4

    move/from16 v5, v17

    goto :goto_2bf

    :catch_312
    move-exception v6

    move-wide v14, v4

    move-object v4, v6

    move/from16 v5, v17

    goto :goto_2bf

    :cond_318
    move/from16 v6, v16

    goto/16 :goto_fd

    :cond_31c
    move-wide v4, v14

    move/from16 v6, v16

    goto/16 :goto_fd

    :cond_321
    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, v8

    goto/16 :goto_a3

    :cond_328
    move/from16 p1, v9

    goto/16 :goto_180

    :cond_32c
    move-object/from16 v20, v6

    move-object v4, v7

    move/from16 v21, p1

    move/from16 p1, v8

    goto/16 :goto_a3
.end method

.method public static a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;Z)I
    .registers 27

    const/16 v16, 0x1

    const-wide/16 v14, -0x1

    new-instance v17, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v18, Lcom/coremobility/integration/h/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    :try_start_1c
    const-string v4, "vnotes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    const-string v4, "vnotes"

    if-eqz p1, :cond_3f

    if-gtz p3, :cond_f6

    const/16 p1, 0x0

    const/16 v5, 0x1c

    const-string v6, "Change Updates Not Done for RecId %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    :goto_3f
    new-instance v19, Lcom/coremobility/integration/h/d;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    monitor-enter v20
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_53} :catch_1ae

    :try_start_53
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_1ab

    if-nez p1, :cond_162

    :try_start_58
    const-string v5, "vnotes_mime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_137

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;ILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :goto_74
    const-string v4, "vnotes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;ILjava/lang/String;)I

    :cond_86
    :goto_86
    if-eqz p1, :cond_1e8

    if-eqz v16, :cond_1e8

    const-string v5, "delete"

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p3

    invoke-static/range {v4 .. v13}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J
    :try_end_ac
    .catchall {:try_start_58 .. :try_end_ac} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_ac} :catch_149

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1e4

    const/16 v6, 0x1c

    :try_start_b5
    const-string v7, "Changes INSERT Failed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_c1
    .catchall {:try_start_b5 .. :try_end_c1} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c1} :catch_1df

    :goto_c1
    if-eqz v6, :cond_c6

    :try_start_c3
    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_c6
    monitor-exit v20
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_1ab

    if-eqz p1, :cond_eb

    if-eqz v6, :cond_eb

    :try_start_cb
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v6, "delete"

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v7, p3

    invoke-static/range {v4 .. v11}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V

    :cond_eb
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_f5
    return v4

    :cond_f6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/16 p1, 0x0

    goto/16 :goto_3f

    :cond_108
    const-string v4, "vnotes_mime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_118

    const-string v4, "vnotes_mime"

    const/16 p1, 0x0

    goto/16 :goto_3f

    :cond_118
    const-string v4, "changes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_128

    const-string v4, "changes"

    const/16 p1, 0x0

    goto/16 :goto_3f

    :cond_128
    const/16 v4, 0x1c

    const-string v5, "VnotesDB Delete, Invalid Table %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_135} :catch_1ae

    const/4 v4, 0x0

    goto :goto_f5

    :cond_137
    :try_start_137
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;
    :try_end_147
    .catchall {:try_start_137 .. :try_end_147} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_147} :catch_149

    goto/16 :goto_74

    :catch_149
    move-exception v4

    :goto_14a
    const/16 v5, 0x1c

    :try_start_14c
    const-string v6, "Delete Exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_15e
    .catchall {:try_start_14c .. :try_end_15e} :catchall_1ab

    const/4 v6, 0x0

    move-wide v4, v14

    goto/16 :goto_c1

    :cond_162
    if-eqz p5, :cond_1c5

    :try_start_164
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v6, v4, v7, v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;IIILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1c3

    const/4 v4, 0x1

    :goto_198
    if-nez v4, :cond_1d4

    const/16 v4, 0x1c

    const-string v5, "Set Delete Field Failed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_1a9
    .catchall {:try_start_164 .. :try_end_1a9} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_1a9} :catch_149

    goto/16 :goto_86

    :catchall_1ab
    move-exception v4

    :try_start_1ac
    monitor-exit v20

    throw v4
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1ae} :catch_1ae

    :catch_1ae
    move-exception v4

    const/16 v5, 0x1c

    const-string v6, "Delete Exception %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto/16 :goto_f5

    :cond_1c3
    const/4 v4, 0x0

    goto :goto_198

    :cond_1c5
    :try_start_1c5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/h/d;Ljava/lang/String;Lcom/coremobility/integration/h/d;)Z

    move-result v4

    goto :goto_198

    :cond_1d4
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;
    :try_end_1dd
    .catchall {:try_start_1c5 .. :try_end_1dd} :catchall_1ab
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1dd} :catch_149

    goto/16 :goto_86

    :catch_1df
    move-exception v6

    move-wide v14, v4

    move-object v4, v6

    goto/16 :goto_14a

    :cond_1e4
    move/from16 v6, v16

    goto/16 :goto_c1

    :cond_1e8
    move-wide v4, v14

    move/from16 v6, v16

    goto/16 :goto_c1
.end method

.method private static a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J
    .registers 17

    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V

    const-string v1, "operation"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "record_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new_dir_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new_status"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "old_dir_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "old_status"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "guid"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "old_rate"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new_rate"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "changes"

    invoke-virtual {p0, v1, v0}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7d

    const/16 v2, 0x1c

    const-string v3, "Changes INSERT Failed: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7d
    return-wide v0
.end method

.method public static a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;
    .registers 10

    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/16 v1, 0x1c

    const-string v2, "QueryDB Exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static a(I)Lcom/coremobility/integration/b/d;
    .registers 8

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v0, 0x0

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v2, v1, p0

    monitor-enter v2

    :try_start_8
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    if-eqz v1, :cond_22

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v1, v0, Lcom/coremobility/k/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/coremobility/k/c;->b:I

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_78

    :goto_21
    return-object v0

    :cond_22
    :try_start_22
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-boolean v1, v1, Lcom/coremobility/k/c;->d:Z

    if-eqz v1, :cond_7b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {}, Lcom/coremobility/integration/file/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "smvvm"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-object v3, v3, Lcom/coremobility/k/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5a
    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    invoke-static {v1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;)Lcom/coremobility/integration/b/d;

    move-result-object v1

    iput-object v1, v3, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_82

    const/16 v1, 0x1c

    const-string v3, "VNOTES DB OpenDatabase Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_76
    .catchall {:try_start_22 .. :try_end_76} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_76} :catch_104

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_78

    goto :goto_21

    :catchall_78
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_7b
    :try_start_7b
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->c:Ljava/lang/String;

    goto :goto_5a

    :cond_82
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-boolean v3, v3, Lcom/coremobility/k/c;->d:Z

    iput-boolean v3, v1, Lcom/coremobility/integration/b/d;->b:Z

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {v1}, Lcom/coremobility/integration/b/d;->f()I

    move-result v1

    if-nez v1, :cond_f7

    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-object v3, v3, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/d;->a(I)V

    :cond_a6
    :goto_a6
    const/16 v3, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VNOTES Provider DB Open. Version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez v1, :cond_ce

    if-ge v1, v6, :cond_ce

    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-object v3, v3, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v3, v1}, Lcom/coremobility/k/b;->c(Lcom/coremobility/integration/b/d;I)Z

    :cond_ce
    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;)Z

    move-result v1

    if-nez v1, :cond_129

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {v1}, Lcom/coremobility/integration/b/d;->b()V

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    const/16 v1, 0x1c

    const-string v3, "VNOTES DB Open Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_f4
    .catchall {:try_start_7b .. :try_end_f4} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_f4} :catch_104

    :try_start_f4
    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_78

    goto/16 :goto_21

    :cond_f7
    if-ge v1, v4, :cond_a6

    :try_start_f9
    sget-object v3, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v3, v3, p0

    iget-object v3, v3, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/d;->a(I)V
    :try_end_103
    .catchall {:try_start_f9 .. :try_end_103} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_103} :catch_104

    goto :goto_a6

    :catch_104
    move-exception v1

    const/16 v3, 0x1c

    :try_start_107
    const-string v4, "CM_VnotesDbUtils OpenDB() Exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {v1}, Lcom/coremobility/integration/b/d;->b()V

    sget-object v1, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v1, p0

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    monitor-exit v2

    goto/16 :goto_21

    :cond_129
    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v1, v0, Lcom/coremobility/k/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/coremobility/k/c;->b:I

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    monitor-exit v2
    :try_end_13a
    .catchall {:try_start_107 .. :try_end_13a} :catchall_78

    goto/16 :goto_21
.end method

.method private static a(Lcom/coremobility/integration/b/d;ILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const/16 v3, 0x32

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v0, p2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_24

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_24
    const-string v6, "out_timestamp ASC,_id ASC"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v7, v2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_8e

    new-instance v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dir_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is_deleted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5f
    const-string v8, "vnotes"

    invoke-virtual {p0, v8, v0, v7, v6}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v6

    packed-switch p1, :pswitch_data_d2

    :pswitch_68
    move v0, v4

    :goto_69
    if-eqz v6, :cond_c0

    invoke-virtual {v6}, Lcom/coremobility/integration/b/b;->b()I

    move-result v3

    invoke-virtual {v6}, Lcom/coremobility/integration/b/b;->a()V

    sub-int v6, v0, v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_ce

    if-lez v6, :cond_ce

    move v0, v2

    move v3, v2

    :goto_7e
    if-ge v3, v6, :cond_c7

    const/16 v5, 0x2c

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v4, :cond_c2

    add-int/lit8 v4, v6, -0x1

    if-eq v3, v4, :cond_c7

    move-object p2, v1

    :cond_8d
    :goto_8d
    return-object p2

    :cond_8e
    new-instance v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dir_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is_deleted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5f

    :pswitch_b9
    const/16 v0, 0x96

    goto :goto_69

    :pswitch_bc
    move v0, v3

    goto :goto_69

    :pswitch_be
    move v0, v3

    goto :goto_69

    :cond_c0
    move-object p2, v1

    goto :goto_8d

    :cond_c2
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_c7
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_8d

    :cond_ce
    if-lt v3, v0, :cond_8d

    move-object p2, v1

    goto :goto_8d

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_68
        :pswitch_b9
        :pswitch_68
        :pswitch_68
        :pswitch_be
    .end packed-switch
.end method

.method public static a(Lcom/coremobility/integration/b/d;J)V
    .registers 9

    const/16 v5, 0x1c

    const/4 v4, 0x0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changes"

    invoke-virtual {p0, v1, v0}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteChangesRecord with Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    const-string v1, "DeleteChangesRecord Exception %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_37
.end method

.method private static a(Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)V
    .registers 5

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    goto :goto_12
.end method

.method private static a(Lcom/coremobility/integration/b/d;)Z
    .registers 7

    const/16 v5, 0x1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1c

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VNOTES Provider Tables Open. Version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "create table IF NOT EXISTS vnotes ( _id integer primary key autoincrement, dir_id integer null, sender_name text null, sender_mdn text null, sender_email text null, subject text null, recipient_mdns text null, recipient_emails text null, previous_sender text null, guid text null, in_reply_to_guid text null, in_reply_to_name text null, uri text null, status integer null, out_timestamp integer null, sent_timestamp integer null, recv_timestamp integer null, read_timestamp integer null, repl_timestamp integer null, fwd_timestamp integer null, forward_to_guid text null, is_deleted integer default 0, txt_summary text null );"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "create table IF NOT EXISTS vnotes_mime ( record_id integer not null, file_type integer null, file_order integer null, filename_only text not null, file_size integer null, duration integer null, transcribe_rate integer null, mime_guid text not null, primary key(record_id,file_type,file_order) );"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "create table IF NOT EXISTS changes ( _id integer primary key autoincrement, operation text not null, record_id integer null, old_dir_id integer null, old_status integer null, new_dir_id integer null, new_status integer null, guid text null, old_rate integer null, new_rate integer null  );"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_33

    :goto_32
    return v0

    :catch_33
    move-exception v2

    const-string v3, "CM_VnotesDbUtils OpenVnotesDbTables() Exception %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5, v3, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_32
.end method

.method private static a(Lcom/coremobility/integration/b/d;ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z
    .registers 11

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "dir_id"

    aput-object v3, v2, v1

    const-string v3, "status"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnotes"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v2, v5}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v2

    if-nez v2, :cond_2f

    :goto_2e
    return v0

    :cond_2f
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    goto :goto_2e

    :cond_39
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->c()Z

    invoke-virtual {v2, v1}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    move v0, v1

    goto :goto_2e
.end method

.method public static a(Lcom/coremobility/integration/b/d;IZJ)Z
    .registers 13

    const/16 v7, 0x1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coremobility/integration/b/a;

    invoke-direct {v3}, Lcom/coremobility/integration/b/a;-><init>()V

    if-eqz p2, :cond_2a

    const-string v4, "is_deleted"

    iget-object v5, v3, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2a
    const-string v4, "status"

    invoke-virtual {v3, v4, p3, p4}, Lcom/coremobility/integration/b/a;->a(Ljava/lang/String;J)V

    const-string v4, "vnotes"

    invoke-virtual {p0, v4, v3, v2}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDeletedItem with VnoteId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_64} :catch_69

    if-lez v2, :cond_67

    :goto_66
    return v0

    :cond_67
    move v0, v1

    goto :goto_66

    :catch_69
    move-exception v2

    const-string v3, "SetVnotesDeleteField Exception %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v7, v3, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_66
.end method

.method private static a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/h/d;Ljava/lang/String;Lcom/coremobility/integration/h/d;)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    aget-object v4, v0, v1

    monitor-enter v4

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1c

    const/4 v0, 0x6

    :try_start_13
    invoke-static {p0, v0, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1c

    monitor-exit v4

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    new-instance v5, Lcom/coremobility/integration/h/d;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)V

    iget-object v0, p1, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, v5, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v3, v6, v0, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;IIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    iget-object v0, p3, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_53

    move v0, v2

    :goto_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_50

    goto :goto_1b

    :catchall_50
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_53
    move v0, v1

    goto :goto_4e
.end method

.method private static a(Lcom/coremobility/integration/b/d;Ljava/lang/String;I)Z
    .registers 10

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "record_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "filename_only"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename_only = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnotes_mime"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v4, v2, v6}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v3

    if-nez v3, :cond_33

    :cond_32
    :goto_32
    return v0

    :cond_33
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->b()I

    move-result v2

    if-nez v2, :cond_53

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3c} :catch_3d

    goto :goto_32

    :catch_3d
    move-exception v2

    const/16 v4, 0x1c

    const-string v5, "FileInUseByOtherVnotes Exception %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v4, v5, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    goto :goto_32

    :cond_53
    :try_start_53
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->c()Z

    move v2, v0

    :goto_57
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->b()I

    move-result v4

    if-ge v2, v4, :cond_6f

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/b/b;->a(I)I

    move-result v4

    if-eq v4, p2, :cond_69

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    move v0, v1

    goto :goto_32

    :cond_69
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->d()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_6f
    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_72} :catch_3d

    goto :goto_32
.end method

.method private static b(Lcom/coremobility/integration/b/d;ILjava/lang/String;)I
    .registers 14

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x1c

    const/4 v1, 0x0

    const/4 v0, 0x2

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "record_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "filename_only"

    aput-object v4, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_38

    const-string v0, ""

    :goto_25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "vnotes_mime"

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v2, v5}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v2

    if-nez v2, :cond_4c

    move v0, v1

    :cond_37
    :goto_37
    return v0

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4a} :catch_145

    move-result-object v0

    goto :goto_25

    :cond_4c
    :try_start_4c
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V

    move v0, v1

    goto :goto_37

    :cond_57
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->c()Z

    move v0, v1

    :goto_5b
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->b()I

    move-result v5

    if-ge v0, v5, :cond_113

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/coremobility/integration/b/b;->c(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/coremobility/integration/b/d;->b:Z

    if-eqz v6, :cond_c8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {}, Lcom/coremobility/integration/file/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smvvm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleteting Mime File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    :cond_c2
    :goto_c2
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->d()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_c8
    invoke-static {p0, v5, p1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_c2

    const/16 v6, 0x1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleteting Mime File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    invoke-static {v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    const-string v6, "VN-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c2

    invoke-static {v5}, Lcom/coremobility/k/a;->a(Ljava/lang/String;)Z
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_fa} :catch_fb

    goto :goto_c2

    :catch_fb
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    :goto_ff
    const-string v4, "DeleteVnotesMimes Exception %s"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v9, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/coremobility/integration/b/b;->a()V

    goto/16 :goto_37

    :cond_113
    :try_start_113
    invoke-virtual {v2}, Lcom/coremobility/integration/b/b;->a()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_fb

    :try_start_116
    const-string v0, "vnotes_mime"

    invoke-virtual {p0, v0, v4}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11b} :catch_145

    move-result v0

    const/16 v2, 0x1c

    :try_start_11e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteVnotesMimes VnotesId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_141} :catch_143

    goto/16 :goto_37

    :catch_143
    move-exception v2

    goto :goto_ff

    :catch_145
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_ff
.end method

.method public static b(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I
    .registers 16

    const/4 v10, 0x1

    if-eqz p1, :cond_1e

    :try_start_3
    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0, p1}, Lcom/coremobility/integration/b/a;-><init>(Lcom/coremobility/integration/b/a;)V

    :goto_8
    const-string v1, "record_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing Record ID"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    :goto_1d
    return v0

    :cond_1e
    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_8

    :catch_24
    move-exception v0

    const/16 v1, 0x1c

    const-string v2, "VnotesMime INSERT Exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1d

    :cond_38
    :try_start_38
    const-string v1, "record_id"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v1, "file_type"

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing File Type"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1d

    :cond_5a
    const-string v1, "filename_only"

    iget-object v3, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Missing Filename"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_1d

    :cond_70
    iget-object v1, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    monitor-enter v11
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_76} :catch_24

    :try_start_76
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->c()V

    const-string v1, "vnotes_mime"

    invoke-virtual {p0, v1, v0}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;)J

    move-result-wide v12

    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-gez v0, :cond_be

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT Failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V

    :cond_93
    :goto_93
    const-string v1, "insert"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;IIIIILjava/lang/String;II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d6

    const/16 v0, 0x1c

    const-string v1, "Changes INSERT MIME INBOX Failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V

    :goto_b5
    if-eqz v0, :cond_ba

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->d()V

    :cond_ba
    monitor-exit v11

    long-to-int v0, v12

    goto/16 :goto_1d

    :cond_be
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_93

    const/16 v0, 0x1c

    const-string v1, "VnotesMime INSERT abort, duplicate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V
    :try_end_d2
    .catchall {:try_start_76 .. :try_end_d2} :catchall_d3

    goto :goto_93

    :catchall_d3
    move-exception v0

    :try_start_d4
    monitor-exit v11

    throw v0
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d6} :catch_24

    :cond_d6
    move v0, v10

    goto :goto_b5
.end method

.method public static b(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I
    .registers 13

    const/16 v10, 0x1c

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteBulkList with VnotesList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Lcom/coremobility/integration/h/d;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    :try_start_24
    new-instance v1, Lcom/coremobility/integration/h/d;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/coremobility/integration/h/d;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/coremobility/integration/h/d;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v3, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4f

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    :cond_4f
    if-nez v0, :cond_5a

    iget-object v0, v9, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_59
    return v0

    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, v1, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ILcom/coremobility/integration/h/d;Lcom/coremobility/integration/h/d;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, v9, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_59

    :cond_6d
    invoke-static {p0, v1, p1, v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/h/d;Ljava/lang/String;Lcom/coremobility/integration/h/d;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteBulkList with VnotesList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-wide/16 v0, 0x0

    const-string v2, "delete_bulk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V

    :goto_a7
    iget-object v0, v9, Lcom/coremobility/integration/h/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_59

    :cond_b0
    const/16 v0, 0x1c

    const-string v1, "DeleteBulkList failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_ba} :catch_bb

    goto :goto_a7

    :catch_bb
    move-exception v0

    const-string v1, "DeleteBulkList Exception %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v10, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v8

    goto :goto_59
.end method

.method public static b(I)V
    .registers 4

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v1, v0, p0

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/coremobility/k/c;->b:I

    if-lez v0, :cond_35

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v2, v0, Lcom/coremobility/k/c;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/coremobility/k/c;->b:I

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/coremobility/k/c;->b:I

    if-nez v0, :cond_33

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/b/d;->b()V

    sget-object v0, Lcom/coremobility/k/b;->a:[Lcom/coremobility/k/c;

    aget-object v0, v0, p0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/coremobility/k/c;->a:Lcom/coremobility/integration/b/d;

    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_37

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_e

    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/coremobility/integration/b/d;I)V
    .registers 10

    const/4 v0, 0x1

    const/16 v7, 0x1c

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/integration/b/d;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    monitor-enter v2

    :try_start_9
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->c()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_69

    const/4 v3, 0x0

    :try_start_d
    invoke-static {p0, p1, v3}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;ILjava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnotes"

    invoke-virtual {p0, v4, v3}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeleteVnotesRecord with VnoteId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_d .. :try_end_4e} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_55

    :goto_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_69

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->d()V

    :goto_54
    return-void

    :catch_55
    move-exception v0

    const/16 v3, 0x1c

    :try_start_58
    const-string v4, "DeleteVnotesRecord Exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_69

    move v0, v1

    goto :goto_4e

    :catchall_69
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6c
    invoke-virtual {p0}, Lcom/coremobility/integration/b/d;->e()V

    const-string v0, "DeleteVnotesRecord failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_54
.end method

.method public static c(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I
    .registers 14

    const/16 v11, 0x1c

    const/4 v10, 0x1

    const/4 v9, 0x0

    :try_start_4
    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V

    const-string v1, "is_deleted"

    iget-object v2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "vnotes"

    invoke-virtual {p0, v1, v0, p1}, Lcom/coremobility/integration/b/d;->a(Ljava/lang/String;Lcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v8

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteBulkList with WhereClause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-wide/16 v0, 0x0

    const-string v2, "delete_bulk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/coremobility/integration/app/j;->a(JLjava/lang/String;IIIII)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4f} :catch_51

    move v0, v8

    :goto_50
    return v0

    :catch_51
    move-exception v0

    const-string v1, "DeleteBulkList Exception %s"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v11, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v9

    goto :goto_50
.end method

.method private static c(Lcom/coremobility/integration/b/d;I)Z
    .registers 10

    const/16 v7, 0x1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_da

    move v0, v1

    :goto_8
    return v0

    :pswitch_9
    const/16 v2, 0x1c

    :try_start_b
    const-string v3, "CM_VnotesDbUtils UpgradeVnotesDb() old %d new %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "ALTER TABLE vnotes ADD txt_summary text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE vnotes_mime ADD transcribe_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE vnotes_mime ADD mime_guid text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD guid text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD old_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD new_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->a(I)V

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VNOTES Provider Upgrade. oldVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6a} :catch_6b

    goto :goto_8

    :catch_6b
    move-exception v2

    const-string v3, "CM_VnotesDbUtils UpgradeVnotesDb() Exception %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v7, v3, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_8

    :pswitch_7b
    const/16 v2, 0x1c

    :try_start_7d
    const-string v3, "CM_VnotesDbUtils UpgradeVnotesDb() old %d new %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "ALTER TABLE vnotes_mime ADD transcribe_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE vnotes_mime ADD mime_guid text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD guid text null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD old_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE changes ADD new_rate integer null;"

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->b(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/b/d;->a(I)V

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VNOTES Provider Upgrade. oldVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_d7} :catch_6b

    goto/16 :goto_8

    nop

    :pswitch_data_da
    .packed-switch 0x2
        :pswitch_9
        :pswitch_7b
    .end packed-switch
.end method
