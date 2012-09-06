.class Lcom/google/android/maps/driveabout/app/ab;
.super Lcom/google/android/maps/driveabout/app/R;
.source "SourceFile"


# instance fields
.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lm/b;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/R;-><init>(Landroid/content/Context;)V

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/ab;->e:Z

    .line 824
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/ab;->e:Z

    if-eqz v1, :cond_18

    .line 825
    const v1, 0x7f0d00c7

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/W;->a(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_18
    invoke-static {}, Lcom/google/android/maps/driveabout/app/W;->a()Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/ab;->a(Ljava/util/ArrayList;)V

    .line 829
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/ab;->a(Lm/b;)V

    .line 830
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 917
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/StarredItemProvider;->b:Landroid/net/Uri;

    sget-object v2, Lcom/google/googlenav/provider/StarredItemProvider;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_14

    .line 920
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 922
    :cond_14
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/ab;)V
    .registers 1
    .parameter

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ab;->b()V

    return-void
.end method

.method private b()V
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 866
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ab;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/StarredItemProvider;->b:Landroid/net/Uri;

    sget-object v2, Lcom/google/googlenav/provider/StarredItemProvider;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 868
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 869
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ab;->e:Z

    if-eqz v0, :cond_25

    .line 870
    const v0, 0x7f0d00c7

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/W;->a(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_25
    if-eqz v5, :cond_97

    .line 875
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [Lcom/google/android/maps/driveabout/app/W;

    .line 876
    monitor-enter p0

    move v0, v6

    .line 877
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 878
    const/4 v1, 0x4

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 879
    const/4 v1, 0x5

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 880
    if-nez v2, :cond_43

    if-eqz v4, :cond_83

    :cond_43
    new-instance v1, Ln/s;

    invoke-direct {v1, v2, v4}, Ln/s;-><init>(II)V

    move-object v4, v1

    .line 881
    :goto_49
    const/4 v1, 0x2

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 882
    const/4 v1, 0x6

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 883
    if-nez v2, :cond_57

    if-eqz v1, :cond_2f

    .line 884
    :cond_57
    if-nez v1, :cond_5a

    move-object v1, v2

    .line 887
    :cond_5a
    new-instance v9, Lo/P;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v4, v2, v10}, Lo/P;-><init>(Ljava/lang/String;Ln/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const/4 v1, 0x3

    invoke-static {v9, v1}, Lcom/google/android/maps/driveabout/app/W;->a(Lo/P;I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v2

    .line 893
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lm/b;

    if-eqz v1, :cond_7d

    if-eqz v4, :cond_7d

    .line 894
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lm/b;

    invoke-virtual {v1, v4}, Lm/b;->b(Ln/s;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/W;->a(F)V

    .line 895
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lm/b;

    invoke-virtual {v1, v4}, Lm/b;->a(Ln/s;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/W;->b(F)V

    .line 897
    :cond_7d
    add-int/lit8 v1, v0, 0x1

    aput-object v2, v8, v0

    move v0, v1

    goto :goto_2f

    :cond_83
    move-object v4, v3

    .line 880
    goto :goto_49

    .line 900
    :cond_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_2f .. :try_end_86} :catchall_b0

    .line 901
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 902
    invoke-static {}, Lcom/google/android/maps/driveabout/app/W;->k()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 903
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 908
    :cond_97
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ab;->e:Z

    if-eqz v0, :cond_b3

    const/4 v0, 0x1

    .line 909
    :goto_9c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_ac

    .line 910
    const v0, 0x7f0d00d3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/W;->c(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_ac
    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/app/ab;->b(Ljava/util/ArrayList;)V

    .line 913
    return-void

    .line 900
    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v0

    :cond_b3
    move v0, v6

    .line 908
    goto :goto_9c
.end method


# virtual methods
.method public a(Lm/b;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 837
    .line 839
    monitor-enter p0

    .line 840
    :try_start_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lm/b;

    if-eqz v2, :cond_4d

    if-eqz p1, :cond_4d

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lm/b;

    invoke-virtual {v2, p1}, Lm/b;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4069

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4d

    move v3, v1

    .line 842
    :goto_17
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lm/b;

    if-eqz v2, :cond_4f

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lm/b;->o()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lm/b;

    invoke-virtual {v2}, Lm/b;->o()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x40c3880000000000L

    cmpl-double v2, v4, v6

    if-lez v2, :cond_4f

    move v2, v1

    .line 848
    :goto_33
    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lm/b;

    if-eqz v4, :cond_3b

    if-nez v2, :cond_3b

    if-eqz v3, :cond_3c

    :cond_3b
    move v0, v1

    .line 849
    :cond_3c
    if-eqz v0, :cond_41

    .line 850
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/app/R;->a(Lm/b;)V

    .line 852
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_51

    .line 854
    if-eqz v0, :cond_4c

    .line 855
    new-instance v0, Lcom/google/android/maps/driveabout/app/ac;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ac;-><init>(Lcom/google/android/maps/driveabout/app/ab;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ac;->start()V

    .line 863
    :cond_4c
    return-void

    :cond_4d
    move v3, v0

    .line 840
    goto :goto_17

    :cond_4f
    move v2, v0

    .line 842
    goto :goto_33

    .line 852
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method
