.class Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;
.super Ljava/lang/Object;
.source "DOADatabase.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoaCursor"
.end annotation


# instance fields
.field private cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter "cursor"

    .prologue
    .line 803
    iput-object p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p2, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    .line 805
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 809
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 811
    :cond_9
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 4
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 815
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 817
    :cond_9
    return-void
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 821
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 822
    :cond_9
    return-void
.end method

.method public getBlob(I)[B
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 826
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 827
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 832
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 833
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 838
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 839
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 846
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 847
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 852
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 858
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 859
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 864
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 865
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 870
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 871
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 876
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 877
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 882
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 883
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInt(I)I
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 888
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 889
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLong(I)J
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 894
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 895
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 900
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 901
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getShort(I)S
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 906
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    .line 907
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 911
    iget-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_10

    .line 912
    iget-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 915
    .end local v0           #value:Ljava/lang/String;
    :goto_c
    return-object v0

    .line 913
    .restart local v0       #value:Ljava/lang/String;
    :cond_d
    const-string v0, ""

    goto :goto_c

    .line 915
    .end local v0           #value:Ljava/lang/String;
    :cond_10
    const-string v0, ""

    goto :goto_c
.end method

.method public getType(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1038
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    .prologue
    .line 920
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 921
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    .line 922
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isAfterLast()Z
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 927
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    .line 928
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isBeforeFirst()Z
    .registers 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 933
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    .line 934
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 939
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    .line 940
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isFirst()Z
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 945
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    .line 946
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isLast()Z
    .registers 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 951
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    .line 952
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 957
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    .line 958
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public move(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 963
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    .line 964
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveToFirst()Z
    .registers 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 969
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 970
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveToLast()Z
    .registers 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 975
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    .line 976
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveToNext()Z
    .registers 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 981
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 982
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveToPosition(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 987
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 988
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveToPrevious()Z
    .registers 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 993
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    .line 994
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 999
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1000
    :cond_9
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 1004
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1006
    :cond_9
    return-void
.end method

.method public requery()Z
    .registers 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 1010
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    .line 1011
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .parameter "extras"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 1016
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1017
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 1022
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1023
    :cond_9
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 1027
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1028
    :cond_9
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 1032
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1033
    :cond_9
    return-void
.end method
