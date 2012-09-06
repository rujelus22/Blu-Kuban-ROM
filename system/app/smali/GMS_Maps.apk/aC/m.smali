.class Lac/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/Vector;

.field final synthetic b:Lac/h;

.field private final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final d:Z

.field private final e:Z


# direct methods
.method constructor <init>(Lac/h;Ljava/util/Vector;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lac/m;->b:Lac/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput-object p2, p0, Lac/m;->a:Ljava/util/Vector;

    .line 792
    iput-object p3, p0, Lac/m;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 796
    invoke-static {p2}, Lac/h;->a(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lac/m;->d:Z

    .line 797
    invoke-static {p2}, Lac/h;->b(Ljava/util/Vector;)Z

    move-result v0

    iput-boolean v0, p0, Lac/m;->e:Z

    .line 798
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 884
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_c7

    .line 887
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_76

    .line 891
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 892
    invoke-interface {v0}, Lac/g;->aP()V

    goto :goto_e

    .line 894
    :cond_1e
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-boolean v0, v0, Lac/h;->d:Z

    if-eqz v0, :cond_49

    .line 895
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v0, v0, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    invoke-interface {v0}, Lcom/google/googlenav/common/io/g;->d()Z

    move-result v0

    .line 896
    iget-object v1, p0, Lac/m;->b:Lac/h;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server 500 for request types: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lac/m;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lac/h;->a(IZLjava/lang/String;)V

    .line 907
    :cond_49
    new-instance v0, Lac/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serverside failure (HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lac/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lac/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_76
    const/16 v0, 0x193

    if-ne p1, v0, :cond_ae

    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-static {v0}, Lac/h;->e(Lac/h;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 918
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-virtual {v0}, Lac/h;->k()V

    .line 930
    :cond_87
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad HTTP response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lac/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_ae
    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_87

    .line 924
    iget-object v0, p0, Lac/m;->b:Lac/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lac/h;->a(I)V

    .line 925
    const-string v0, "DRD"

    const-string v1, "Server side HTTP not implemented"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server side HTTP not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_c7
    const-string v0, "application/binary"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f6

    .line 937
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad HTTP content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lac/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_f6
    return-void
.end method

.method private a(Ljava/io/DataInputStream;)V
    .registers 10
    .parameter

    .prologue
    .line 1149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    const/4 v1, 0x0

    .line 1153
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    :try_start_8
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_26

    .line 1154
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_a4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_18} :catch_a2

    .line 1155
    :try_start_18
    invoke-direct {p0, p1, v0}, Lac/m;->a(Ljava/io/DataInput;Lac/g;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1156
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_21} :catch_a2

    .line 1153
    :cond_21
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_8

    .line 1182
    :cond_26
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3d

    .line 1183
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1185
    :cond_3d
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1186
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1188
    return-void

    .line 1159
    :catch_48
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 1161
    :goto_4c
    :try_start_4c
    instance-of v4, v0, Ljava/io/EOFException;

    if-eqz v4, :cond_7e

    .line 1165
    invoke-interface {v1}, Lac/g;->aP()V

    .line 1167
    iget-object v4, p0, Lac/m;->b:Lac/h;

    iget-boolean v4, v4, Lac/h;->d:Z

    if-eqz v4, :cond_7e

    .line 1168
    invoke-interface {v1}, Lac/g;->a()I

    move-result v1

    .line 1169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No server support for data request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    iget-object v4, p0, Lac/m;->b:Lac/h;

    iget-object v4, v4, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    invoke-interface {v4}, Lcom/google/googlenav/common/io/g;->d()Z

    move-result v4

    .line 1171
    iget-object v5, p0, Lac/m;->b:Lac/h;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4, v1}, Lac/h;->a(IZLjava/lang/String;)V

    .line 1175
    :cond_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_4c .. :try_end_7f} :catchall_7f

    .line 1182
    :catchall_7f
    move-exception v0

    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_97

    .line 1183
    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    iget-object v4, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1185
    :cond_97
    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1186
    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    throw v0

    .line 1176
    :catch_a2
    move-exception v0

    .line 1178
    :try_start_a3
    throw v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_7f

    .line 1159
    :catch_a4
    move-exception v0

    goto :goto_4c
.end method

.method private a(Ljava/io/DataInput;Lac/g;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1203
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 1204
    invoke-interface {p2}, Lac/g;->a()I

    move-result v1

    if-eq v0, v1, :cond_31

    .line 1208
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lac/g;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1212
    :cond_31
    invoke-interface {p2, p1}, Lac/g;->a(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1214
    invoke-interface {p2}, Lac/g;->A_()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1215
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-virtual {v0, p2}, Lac/h;->a(Lac/g;)V

    .line 1217
    :cond_42
    const/4 v0, 0x1

    .line 1221
    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method private c()Ljava/lang/String;
    .registers 5

    .prologue
    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    const-string v0, ""

    .line 946
    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 947
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    const-string v1, ","

    .line 949
    invoke-interface {v0}, Lac/g;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 951
    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 963
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-virtual {v0}, Lac/h;->x()Ljava/lang/String;

    move-result-object v3

    .line 964
    iget-object v0, p0, Lac/m;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v4, 0x27

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 966
    iget-object v0, p0, Lac/m;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 968
    if-eqz v4, :cond_45

    move v0, v1

    :goto_1b
    const-string v6, "app version not set"

    invoke-static {v0, v6}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 969
    if-eqz v5, :cond_47

    move v0, v1

    :goto_23
    const-string v6, "gmm version not set"

    invoke-static {v0, v6}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 970
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/G;->a(C)Lcom/google/common/base/G;

    move-result-object v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lac/m;->b:Lac/h;

    iget-object v7, v7, Lac/h;->c:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v5, v6, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lac/m;->b:Lac/h;

    iget-object v2, v2, Lac/h;->b:Ljava/lang/String;

    aput-object v2, v6, v1

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/common/base/G;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    move v0, v2

    .line 968
    goto :goto_1b

    :cond_47
    move v0, v2

    .line 969
    goto :goto_23
.end method

.method private e()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v4, 0x0

    .line 988
    const-string v0, "DataRequestDispatcher.PendingRequests.RequestsBeingProcessed.serviceRequests"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v0, v0, Lac/h;->k:Lac/f;

    invoke-virtual {v0, p0}, Lac/f;->a(Ljava/lang/Object;)V

    .line 1004
    invoke-virtual {p0}, Lac/m;->b()[B

    move-result-object v5

    .line 1007
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "DRD"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1008
    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lac/h;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v0, ""

    .line 1010
    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 1011
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    const-string v1, "|"

    .line 1013
    invoke-interface {v0}, Lac/g;->a()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 1022
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-static {v0}, Lac/h;->b(Lac/h;)Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 1023
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v0, v0, Lac/h;->e:Lac/l;

    invoke-static {v0}, Lac/l;->d(Lac/l;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lac/m;->b:Lac/h;

    iget-object v1, v1, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    const/4 v6, 0x1

    invoke-interface {v1, v0, v6}, Lcom/google/googlenav/common/io/g;->a(Ljava/lang/String;Z)Lcom/google/googlenav/common/io/GoogleHttpConnection;
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_237

    move-result-object v8

    .line 1026
    :try_start_6a
    const-string v0, "Content-Type"

    const-string v1, "application/binary"

    invoke-interface {v8, v0, v1}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v0, "Content-Length"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-static {v0}, Lac/h;->e(Lac/h;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1029
    const-string v0, "X-Google-Maps-Mobile-API"

    invoke-direct {p0}, Lac/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_9b
    invoke-interface {v8}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->a()Ljava/io/DataOutputStream;
    :try_end_9e
    .catchall {:try_start_6a .. :try_end_9e} :catchall_23d

    move-result-object v7

    .line 1036
    :try_start_9f
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 1037
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget v1, v0, Lac/h;->h:I

    array-length v5, v5

    add-int/2addr v1, v5

    iput v1, v0, Lac/h;->h:I

    .line 1039
    invoke-interface {v8}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->b()Ljava/io/DataInputStream;
    :try_end_ad
    .catchall {:try_start_9f .. :try_end_ad} :catchall_243

    move-result-object v6

    .line 1040
    :try_start_ae
    invoke-interface {v8}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->c()I

    move-result v0

    .line 1041
    invoke-interface {v8}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->d()Ljava/lang/String;

    move-result-object v1

    .line 1042
    iget-object v4, p0, Lac/m;->b:Lac/h;

    invoke-static {v4}, Lac/h;->b(Lac/h;)Lcom/google/googlenav/common/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    sub-long v10, v4, v2

    .line 1044
    const-string v4, ", "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    cmp-long v4, v10, v12

    if-gez v4, :cond_144

    .line 1046
    const-string v4, "<1s"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :goto_d0
    invoke-direct {p0, v0, v1}, Lac/m;->a(ILjava/lang/String;)V

    .line 1052
    invoke-interface {v8}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->e()J

    move-result-wide v0

    long-to-int v12, v0

    .line 1053
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget v1, v0, Lac/h;->i:I

    add-int/2addr v1, v12

    iput v1, v0, Lac/h;->i:I

    .line 1055
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1056
    const/16 v1, 0x17

    if-eq v0, v1, :cond_153

    .line 1058
    iget-object v1, p0, Lac/m;->b:Lac/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lac/h;->a(I)V

    .line 1060
    const-string v1, "DRD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol version mismatch. Client = 23 Server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol version mismatch with the server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10d
    .catchall {:try_start_ae .. :try_end_10d} :catchall_10d

    .line 1096
    :catchall_10d
    move-exception v0

    move-object v1, v0

    move-object v4, v7

    move-object v2, v8

    move-object v0, v6

    .line 1098
    :goto_112
    if-eqz v0, :cond_117

    .line 1099
    :try_start_114
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_22e

    .line 1105
    :cond_117
    :goto_117
    if-eqz v4, :cond_11c

    .line 1106
    :try_start_119
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_231

    .line 1112
    :cond_11c
    :goto_11c
    if-eqz v2, :cond_121

    .line 1113
    :try_start_11e
    invoke-interface {v2}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->f()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_234

    .line 1121
    :cond_121
    :goto_121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_218

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 1123
    invoke-interface {v0}, Lac/g;->j_()Z

    move-result v4

    if-nez v4, :cond_213

    .line 1125
    iget-object v4, p0, Lac/m;->b:Lac/h;

    invoke-virtual {v4, v0}, Lac/h;->b(Lac/g;)V

    goto :goto_12c

    .line 1048
    :cond_144
    const-wide/16 v4, 0x3e8

    :try_start_146
    div-long v4, v10, v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d0

    .line 1065
    :cond_153
    invoke-direct {p0, v6}, Lac/m;->a(Ljava/io/DataInputStream;)V

    .line 1067
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-static {v0}, Lac/h;->b(Lac/h;)Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 1068
    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 1070
    const/16 v0, 0x16

    const-string v1, "fb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1073
    const/16 v0, 0x16

    const-string v1, "lb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v0, v0, Lac/h;->k:Lac/f;

    long-to-int v4, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lac/f;->a(Ljava/lang/Object;JII)V

    .line 1081
    const/16 v0, 0x2000

    if-lt v12, v0, :cond_1b3

    int-to-long v0, v5

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1b3

    .line 1083
    iget-object v0, p0, Lac/m;->b:Lac/h;

    mul-int/lit16 v1, v12, 0x3e8

    div-int/2addr v1, v5

    invoke-static {v0, v1}, Lac/h;->b(Lac/h;I)I

    .line 1089
    :cond_1b3
    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const/16 v0, 0x3e8

    if-ge v12, v0, :cond_1f3

    .line 1091
    const-string v0, "<1kb"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c1
    .catchall {:try_start_146 .. :try_end_1c1} :catchall_10d

    .line 1098
    :goto_1c1
    if-eqz v6, :cond_1c6

    .line 1099
    :try_start_1c3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_228

    .line 1105
    :cond_1c6
    :goto_1c6
    if-eqz v7, :cond_1cb

    .line 1106
    :try_start_1c8
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_22a

    .line 1112
    :cond_1cb
    :goto_1cb
    if-eqz v8, :cond_1d0

    .line 1113
    :try_start_1cd
    invoke-interface {v8}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->f()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_22c

    .line 1121
    :cond_1d0
    :goto_1d0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1db
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_203

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 1123
    invoke-interface {v0}, Lac/g;->j_()Z

    move-result v3

    if-nez v3, :cond_1ff

    .line 1125
    iget-object v3, p0, Lac/m;->b:Lac/h;

    invoke-virtual {v3, v0}, Lac/h;->b(Lac/g;)V

    goto :goto_1db

    .line 1093
    :cond_1f3
    :try_start_1f3
    div-int/lit16 v0, v12, 0x3e8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1fe
    .catchall {:try_start_1f3 .. :try_end_1fe} :catchall_10d

    goto :goto_1c1

    .line 1128
    :cond_1ff
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1db

    .line 1132
    :cond_203
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1133
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1134
    const-string v0, "DataRequestDispatcher.PendingRequests.RequestsBeingProcessed.serviceRequests"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 1137
    return-void

    .line 1128
    :cond_213
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1132
    :cond_218
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1133
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1134
    const-string v0, "DataRequestDispatcher.PendingRequests.RequestsBeingProcessed.serviceRequests"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 1136
    throw v1

    .line 1101
    :catch_228
    move-exception v0

    goto :goto_1c6

    .line 1108
    :catch_22a
    move-exception v0

    goto :goto_1cb

    .line 1116
    :catch_22c
    move-exception v0

    goto :goto_1d0

    .line 1101
    :catch_22e
    move-exception v0

    goto/16 :goto_117

    .line 1108
    :catch_231
    move-exception v0

    goto/16 :goto_11c

    .line 1116
    :catch_234
    move-exception v0

    goto/16 :goto_121

    .line 1096
    :catchall_237
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    move-object v0, v4

    goto/16 :goto_112

    :catchall_23d
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v4

    goto/16 :goto_112

    :catchall_243
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v4

    move-object v4, v7

    goto/16 :goto_112
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1225
    const/4 v0, 0x0

    .line 1226
    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-static {v1}, Lac/h;->c(Ljava/util/Vector;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1233
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-static {v0}, Lac/h;->f(Lac/h;)Lcom/google/googlenav/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bh;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    move-object v1, v0

    .line 1240
    :goto_15
    if-eqz v1, :cond_41

    .line 1241
    iget-object v0, p0, Lac/m;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->clone()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1242
    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1248
    :goto_22
    new-instance v1, Lac/e;

    invoke-direct {v1, v0}, Lac/e;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1249
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 1250
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 1251
    instance-of v0, v0, Lac/e;

    if-eqz v0, :cond_44

    .line 1253
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1260
    :goto_40
    return-void

    .line 1245
    :cond_41
    iget-object v0, p0, Lac/m;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_22

    .line 1255
    :cond_44
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_40

    .line 1258
    :cond_4a
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_40

    :cond_50
    move-object v1, v0

    goto :goto_15
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 805
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-boolean v1, p0, Lac/m;->d:Z

    iget-boolean v2, p0, Lac/m;->e:Z

    invoke-static {v0, v1, v2}, Lac/h;->a(Lac/h;ZZ)V

    .line 806
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v1, p0, Lac/m;->b:Lac/h;

    invoke-static {v1}, Lac/h;->b(Lac/h;)Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lac/h;->a(Lac/h;J)J

    .line 807
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DataRequestDispatcher"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 808
    return-void
.end method

.method b()[B
    .registers 6

    .prologue
    .line 1269
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1270
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1272
    invoke-direct {p0}, Lac/m;->f()V

    .line 1274
    const/16 v0, 0x17

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1275
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-virtual {v0}, Lac/h;->w()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1276
    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v0, v0, Lac/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v0, v0, Lac/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-static {v0}, Lac/h;->g(Lac/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/g;

    .line 1282
    invoke-interface {v0}, Lac/g;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1283
    invoke-interface {v0, v2}, Lac/g;->a(Ljava/io/DataOutput;)V

    goto :goto_3f

    .line 1285
    :cond_56
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1286
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 817
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lac/m;->b:Lac/h;

    invoke-static {v0}, Lac/h;->c(Lac/h;)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_ba

    .line 818
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_79

    .line 819
    :try_start_11
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v0, v0, Lac/h;->e:Lac/l;

    invoke-static {v0}, Lac/l;->b(Lac/l;)J
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_8b

    move-result-wide v0

    .line 820
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_22

    .line 822
    :try_start_1f
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_8b
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_cb

    .line 827
    :cond_22
    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_8b

    .line 830
    :try_start_23
    iget-object v0, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 832
    invoke-direct {p0}, Lac/m;->e()V

    .line 833
    iget-object v1, p0, Lac/m;->b:Lac/h;

    iget-object v1, v1, Lac/h;->j:Lcom/google/googlenav/common/io/g;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/g;->a(Z)Z

    .line 834
    iget-object v1, p0, Lac/m;->b:Lac/h;

    invoke-static {v1}, Lac/h;->d(Lac/h;)V

    .line 835
    iget-object v1, p0, Lac/m;->b:Lac/h;

    iget-object v2, p0, Lac/m;->b:Lac/h;

    invoke-static {v2}, Lac/h;->b(Lac/h;)Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lac/h;->b(Lac/h;J)J

    .line 840
    iget-object v1, p0, Lac/m;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 841
    const-string v1, "DRD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No requests are processed. Request count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No requests are processed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_70
    .catchall {:try_start_23 .. :try_end_70} :catchall_79
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_70} :catch_70
    .catch Lac/n; {:try_start_23 .. :try_end_70} :catch_8e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_70} :catch_97
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_70} :catch_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_70} :catch_ae

    .line 845
    :catch_70
    move-exception v0

    .line 846
    :try_start_71
    iget-object v1, p0, Lac/m;->b:Lac/h;

    iget-object v1, v1, Lac/h;->e:Lac/l;

    invoke-static {v1, v0}, Lac/l;->a(Lac/l;Ljava/lang/Exception;)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_79

    goto :goto_0

    .line 865
    :catchall_79
    move-exception v0

    iget-object v1, p0, Lac/m;->b:Lac/h;

    iget-boolean v2, p0, Lac/m;->d:Z

    iget-boolean v3, p0, Lac/m;->e:Z

    invoke-static {v1, v2, v3}, Lac/h;->b(Lac/h;ZZ)V

    .line 869
    iget-object v1, p0, Lac/m;->b:Lac/h;

    iget-object v1, v1, Lac/h;->e:Lac/l;

    invoke-static {v1}, Lac/l;->c(Lac/l;)V

    throw v0

    .line 827
    :catchall_8b
    move-exception v0

    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v0

    .line 847
    :catch_8e
    move-exception v0

    .line 851
    iget-object v1, p0, Lac/m;->b:Lac/h;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lac/h;->a(Lac/h;ILjava/lang/Throwable;)V

    goto/16 :goto_0

    .line 852
    :catch_97
    move-exception v0

    .line 855
    iget-object v1, p0, Lac/m;->b:Lac/h;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lac/h;->a(Lac/h;ILjava/lang/Throwable;)V

    goto/16 :goto_0

    .line 856
    :catch_a0
    move-exception v0

    .line 857
    iget-object v1, p0, Lac/m;->b:Lac/h;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lac/h;->a(Lac/h;ILjava/lang/Throwable;)V

    .line 858
    const-string v1, "REQUEST"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 859
    :catch_ae
    move-exception v0

    .line 860
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    .line 861
    iget-object v1, p0, Lac/m;->b:Lac/h;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lac/h;->a(Lac/h;ILjava/lang/Throwable;)V
    :try_end_b8
    .catchall {:try_start_8d .. :try_end_b8} :catchall_79

    goto/16 :goto_0

    .line 865
    :cond_ba
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-boolean v1, p0, Lac/m;->d:Z

    iget-boolean v2, p0, Lac/m;->e:Z

    invoke-static {v0, v1, v2}, Lac/h;->b(Lac/h;ZZ)V

    .line 869
    iget-object v0, p0, Lac/m;->b:Lac/h;

    iget-object v0, v0, Lac/h;->e:Lac/l;

    invoke-static {v0}, Lac/l;->c(Lac/l;)V

    .line 871
    return-void

    .line 823
    :catch_cb
    move-exception v0

    goto/16 :goto_22
.end method
