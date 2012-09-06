.class final Lcom/dropbox/android/service/r;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/service/CameraUploadService;

.field private b:I

.field private final c:Ljava/util/LinkedList;

.field private final d:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/service/CameraUploadService;)V
    .registers 3
    .parameter

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/dropbox/android/service/r;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/service/r;->b:I

    .line 1021
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/service/r;->c:Ljava/util/LinkedList;

    .line 1023
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/service/r;->d:Lcom/dropbox/android/taskqueue/G;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lcom/dropbox/android/service/r;-><init>(Lcom/dropbox/android/service/CameraUploadService;)V

    return-void
.end method

.method private a(Lcom/dropbox/android/service/f;I)Lcom/dropbox/android/taskqueue/CameraUploadTask;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 1161
    new-instance v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    iget-object v1, p0, Lcom/dropbox/android/service/r;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-virtual {v1}, Lcom/dropbox/android/service/CameraUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/dropbox/android/service/f;->d(Lcom/dropbox/android/service/f;)Ljava/io/File;

    move-result-object v2

    invoke-static {p1}, Lcom/dropbox/android/service/f;->e(Lcom/dropbox/android/service/f;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/dropbox/android/service/f;->f(Lcom/dropbox/android/service/f;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/dropbox/android/service/f;->g(Lcom/dropbox/android/service/f;)J

    move-result-wide v5

    invoke-static {p1}, Lcom/dropbox/android/service/f;->h(Lcom/dropbox/android/service/f;)Ljava/lang/String;

    move-result-object v7

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/android/taskqueue/CameraUploadTask;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    return-object v0
.end method

.method private a(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 6
    .parameter

    .prologue
    .line 1143
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1145
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/service/f;

    .line 1146
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/service/f;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/service/f;->b(Lcom/dropbox/android/service/f;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1148
    :cond_2d
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1149
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1150
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1153
    :cond_39
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1156
    :cond_43
    return-object v2
.end method

.method private a(Z)V
    .registers 13
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1052
    iget-object v0, p0, Lcom/dropbox/android/service/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 1053
    iget-object v0, p0, Lcom/dropbox/android/service/r;->c:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/dropbox/android/service/r;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v8

    .line 1055
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, v7, :cond_18

    if-eqz p1, :cond_101

    .line 1056
    :cond_18
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dropbox/android/service/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1057
    iget-object v0, p0, Lcom/dropbox/android/service/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1059
    if-nez p1, :cond_35

    .line 1062
    iget-object v1, p0, Lcom/dropbox/android/service/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_35
    move v3, v4

    .line 1065
    :goto_36
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v3, v0, :cond_f6

    .line 1066
    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1067
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_9d

    move v6, v7

    .line 1068
    :goto_4b
    const/4 v5, 0x0

    .line 1069
    if-nez v3, :cond_102

    .line 1074
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/service/f;

    invoke-static {v1}, Lcom/dropbox/android/service/f;->c(Lcom/dropbox/android/service/f;)Landroid/net/Uri;

    move-result-object v1

    .line 1075
    iget-object v2, p0, Lcom/dropbox/android/service/r;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v2}, Lcom/dropbox/android/service/CameraUploadService;->j(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/service/i;

    .line 1076
    if-eqz v1, :cond_102

    invoke-static {v1}, Lcom/dropbox/android/service/i;->a(Lcom/dropbox/android/service/i;)Lcom/dropbox/android/service/f;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/android/service/f;

    invoke-virtual {v10, v2}, Lcom/dropbox/android/service/f;->b(Lcom/dropbox/android/service/f;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 1081
    :goto_76
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v7, :cond_c3

    .line 1084
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1088
    if-nez v1, :cond_9f

    move v1, v4

    .line 1093
    :goto_82
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/service/f;

    .line 1094
    add-int/lit8 v2, v2, 0x1

    .line 1095
    invoke-direct {p0, v1, v2}, Lcom/dropbox/android/service/r;->a(Lcom/dropbox/android/service/f;I)Lcom/dropbox/android/taskqueue/CameraUploadTask;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_9d
    move v6, v4

    .line 1067
    goto :goto_4b

    .line 1091
    :cond_9f
    invoke-static {v1}, Lcom/dropbox/android/service/i;->b(Lcom/dropbox/android/service/i;)I

    move-result v1

    goto :goto_82

    .line 1106
    :cond_a4
    if-eqz v6, :cond_be

    .line 1107
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/service/f;

    .line 1108
    iget-object v1, p0, Lcom/dropbox/android/service/r;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v1}, Lcom/dropbox/android/service/CameraUploadService;->j(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Lcom/dropbox/android/service/f;->c(Lcom/dropbox/android/service/f;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/dropbox/android/service/i;

    invoke-direct {v6, v0, v2}, Lcom/dropbox/android/service/i;-><init>(Lcom/dropbox/android/service/f;I)V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :cond_be
    :goto_be
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_36

    .line 1114
    :cond_c3
    if-nez v1, :cond_d4

    .line 1115
    const/4 v1, -0x1

    .line 1126
    :goto_c6
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/service/f;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/service/r;->a(Lcom/dropbox/android/service/f;I)Lcom/dropbox/android/taskqueue/CameraUploadTask;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 1117
    :cond_d4
    invoke-static {v1}, Lcom/dropbox/android/service/i;->b(Lcom/dropbox/android/service/i;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 1119
    if-eqz v6, :cond_f4

    .line 1121
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/service/f;

    .line 1122
    iget-object v5, p0, Lcom/dropbox/android/service/r;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v5}, Lcom/dropbox/android/service/CameraUploadService;->j(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v1}, Lcom/dropbox/android/service/f;->c(Lcom/dropbox/android/service/f;)Landroid/net/Uri;

    move-result-object v6

    new-instance v10, Lcom/dropbox/android/service/i;

    invoke-direct {v10, v1, v2}, Lcom/dropbox/android/service/i;-><init>(Lcom/dropbox/android/service/f;I)V

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f4
    move v1, v2

    goto :goto_c6

    .line 1130
    :cond_f6
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 1131
    iget-object v0, p0, Lcom/dropbox/android/service/r;->d:Lcom/dropbox/android/taskqueue/G;

    invoke-virtual {v0, v9, v7}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/util/List;Z)V

    .line 1135
    :cond_101
    return-void

    :cond_102
    move-object v1, v5

    goto/16 :goto_76
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 1041
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dropbox/android/service/r;->a(Z)V

    .line 1042
    return-void
.end method

.method public final a(Lcom/dropbox/android/service/f;)V
    .registers 4
    .parameter

    .prologue
    .line 1026
    iget v0, p0, Lcom/dropbox/android/service/r;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/service/r;->b:I

    .line 1027
    iget-object v0, p0, Lcom/dropbox/android/service/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1029
    iget v0, p0, Lcom/dropbox/android/service/r;->b:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1b

    iget-object v0, p0, Lcom/dropbox/android/service/r;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1f

    .line 1030
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/android/service/r;->a(Z)V

    .line 1032
    :cond_1f
    return-void
.end method
