.class public final Lcom/twitter/android/cz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/util/ArrayList;

.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/da;

    invoke-direct {v0}, Lcom/twitter/android/da;-><init>()V

    sput-object v0, Lcom/twitter/android/cz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v2, v1

    :goto_11
    if-ge v2, v3, :cond_68

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    packed-switch v0, :pswitch_data_88

    :goto_22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :pswitch_26
    new-instance v5, Lcom/twitter/android/db;

    invoke-direct {v5, v4}, Lcom/twitter/android/db;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v5, v0}, Lcom/twitter/android/db;->a(Landroid/location/Location;)V

    invoke-virtual {p0, v5}, Lcom/twitter/android/cz;->a(Lcom/twitter/android/dd;)V

    goto :goto_22

    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/twitter/android/de;

    invoke-direct {v6, v4, v0, v5}, Lcom/twitter/android/de;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/android/de;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/twitter/android/cz;->a(Lcom/twitter/android/dd;)V

    goto :goto_22

    :pswitch_4c
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    new-instance v5, Lcom/twitter/android/dc;

    invoke-direct {v5, v4, v0}, Lcom/twitter/android/dc;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/twitter/android/dc;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v5, Lcom/twitter/android/dc;->c:I

    invoke-virtual {p0, v5}, Lcom/twitter/android/cz;->a(Lcom/twitter/android/dd;)V

    goto :goto_22

    :cond_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_86

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_74
    if-ge v0, v2, :cond_84

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_84
    iput-object v3, p0, Lcom/twitter/android/cz;->a:Ljava/util/ArrayList;

    :cond_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_26
        :pswitch_38
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dd;

    iget v2, v0, Lcom/twitter/android/dd;->g:I

    if-nez v2, :cond_6

    check-cast v0, Lcom/twitter/android/db;

    iget-object v0, v0, Lcom/twitter/android/db;->a:Landroid/location/Location;

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final a(I)Lcom/twitter/android/dd;
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dd;

    iget v2, v0, Lcom/twitter/android/dd;->h:I

    if-ne v2, p1, :cond_6

    iget-object v1, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final a(Landroid/net/Uri;)Lcom/twitter/android/dd;
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dd;

    const/4 v1, 0x2

    iget v3, v0, Lcom/twitter/android/dd;->g:I

    if-ne v1, v3, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/twitter/android/dc;

    iget-object v1, v1, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public final a(Lcom/twitter/android/dd;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/twitter/android/db;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dd;

    iget v2, v0, Lcom/twitter/android/dd;->g:I

    if-nez v2, :cond_6

    check-cast v0, Lcom/twitter/android/db;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final b(Lcom/twitter/android/dd;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/cz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dd;

    iget v2, v0, Lcom/twitter/android/dd;->g:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, v0, Lcom/twitter/android/dd;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v2, v0, Lcom/twitter/android/dd;->h:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/twitter/android/dd;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_88

    goto :goto_10

    :pswitch_33
    check-cast v0, Lcom/twitter/android/db;

    iget-object v0, v0, Lcom/twitter/android/db;->a:Landroid/location/Location;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_10

    :pswitch_3b
    check-cast v0, Lcom/twitter/android/de;

    iget-object v2, v0, Lcom/twitter/android/de;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/twitter/android/de;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_48
    check-cast v0, Lcom/twitter/android/dc;

    iget-object v2, v0, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, v0, Lcom/twitter/android/dc;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, v0, Lcom/twitter/android/dc;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    :cond_5a
    iget-object v0, p0, Lcom/twitter/android/cz;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_68

    :cond_64
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_67
    return-void

    :cond_68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_73

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3b
        :pswitch_48
    .end packed-switch
.end method
