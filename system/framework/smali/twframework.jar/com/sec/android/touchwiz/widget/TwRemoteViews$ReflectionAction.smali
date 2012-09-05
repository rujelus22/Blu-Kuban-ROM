.class Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;
.super Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;
.source "TwRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReflectionAction"
.end annotation


# static fields
.field static final BITMAP:I = 0xc

.field static final BOOLEAN:I = 0x1

.field static final BUNDLE:I = 0xd

.field static final BYTE:I = 0x2

.field static final CHAR:I = 0x8

.field static final CHAR_SEQUENCE:I = 0xa

.field static final DOUBLE:I = 0x7

.field static final FLOAT:I = 0x6

.field static final INT:I = 0x4

.field static final INTENT:I = 0xe

.field static final LONG:I = 0x5

.field static final SHORT:I = 0x3

.field static final STRING:I = 0x9

.field static final TAG:I = 0x2

.field static final URI:I = 0xb


# instance fields
.field methodName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

.field type:I

.field value:Ljava/lang/Object;

.field viewId:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter "viewId"
    .parameter "methodName"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 661
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->viewId:I

    .line 662
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    .line 663
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->type:I

    .line 664
    iput-object p5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 665
    return-void
.end method

.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Landroid/os/Parcel;)V
    .registers 5
    .parameter
    .parameter "in"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->this$0:Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$Action;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViews$1;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->viewId:I

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->type:I

    .line 676
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_b2

    .line 722
    :goto_1d
    return-void

    .line 678
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    :cond_2c
    const/4 v0, 0x0

    goto :goto_25

    .line 681
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 684
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 687
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 690
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 693
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 696
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 699
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 702
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 705
    :pswitch_84
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 708
    :pswitch_8d
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_1d

    .line 711
    :pswitch_96
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_1d

    .line 714
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_1d

    .line 717
    :pswitch_a8
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_1d

    .line 676
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2e
        :pswitch_39
        :pswitch_45
        :pswitch_50
        :pswitch_5b
        :pswitch_66
        :pswitch_71
        :pswitch_7d
        :pswitch_84
        :pswitch_8d
        :pswitch_96
        :pswitch_a0
        :pswitch_a8
    .end packed-switch
.end method

.method private getParameterType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 783
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_32

    .line 813
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 785
    :pswitch_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_6

    .line 787
    :pswitch_a
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_6

    .line 789
    :pswitch_d
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_6

    .line 791
    :pswitch_10
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_6

    .line 793
    :pswitch_13
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_6

    .line 795
    :pswitch_16
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_6

    .line 797
    :pswitch_19
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_6

    .line 799
    :pswitch_1c
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_6

    .line 801
    :pswitch_1f
    const-class v0, Ljava/lang/String;

    goto :goto_6

    .line 803
    :pswitch_22
    const-class v0, Ljava/lang/CharSequence;

    goto :goto_6

    .line 805
    :pswitch_25
    const-class v0, Landroid/net/Uri;

    goto :goto_6

    .line 807
    :pswitch_28
    const-class v0, Landroid/graphics/Bitmap;

    goto :goto_6

    .line 809
    :pswitch_2b
    const-class v0, Landroid/os/Bundle;

    goto :goto_6

    .line 811
    :pswitch_2e
    const-class v0, Landroid/content/Intent;

    goto :goto_6

    .line 783
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 12
    .parameter "root"
    .parameter "rootParent"

    .prologue
    .line 819
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 820
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_9

    .line 855
    :goto_8
    return-void

    .line 822
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    move-result-object v3

    .line 823
    .local v3, param:Ljava/lang/Class;
    if-nez v3, :cond_2a

    .line 824
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 827
    :cond_2a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 830
    .local v1, klass:Ljava/lang/Class;
    :try_start_2e
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_3d} :catch_83

    move-result-object v2

    .line 837
    .local v2, method:Ljava/lang/reflect/Method;
    const-class v5, Landroid/view/RemotableViewMethod;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 838
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can\'t use method with RemoteViews: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 832
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_83
    move-exception v0

    .line 833
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 850
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_c1
    const/4 v5, 0x1

    :try_start_c2
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cc} :catch_ce

    goto/16 :goto_8

    .line 852
    :catch_ce
    move-exception v0

    .line 853
    .local v0, ex:Ljava/lang/Exception;
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;

    invoke-direct {v5, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public updateMemoryUsageEstimate(Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;)V
    .registers 7
    .parameter "counter"

    .prologue
    .line 860
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->type:I

    packed-switch v3, :pswitch_data_34

    .line 887
    :cond_5
    :goto_5
    return-void

    .line 862
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 863
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 864
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 866
    .local v2, c:Landroid/graphics/Bitmap$Config;
    const/4 v1, 0x4

    .line 867
    .local v1, bpp:I
    if-eqz v2, :cond_20

    .line 868
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwRemoteViews$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3a

    .line 881
    :cond_20
    :goto_20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViews$MemoryUsageCounter;->bitmapIncrement(I)V

    goto :goto_5

    .line 870
    :pswitch_2e
    const/4 v1, 0x1

    .line 871
    goto :goto_20

    .line 874
    :pswitch_30
    const/4 v1, 0x2

    .line 875
    goto :goto_20

    .line 877
    :pswitch_32
    const/4 v1, 0x4

    goto :goto_20

    .line 860
    :pswitch_data_34
    .packed-switch 0xc
        :pswitch_6
    .end packed-switch

    .line 868
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_30
        :pswitch_30
        :pswitch_32
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 725
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_b2

    .line 780
    :goto_18
    return-void

    .line 736
    :pswitch_19
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    :cond_28
    const/4 v0, 0x0

    goto :goto_24

    .line 739
    :pswitch_2a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_18

    .line 742
    :pswitch_36
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 745
    :pswitch_42
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 748
    :pswitch_4e
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_18

    .line 751
    :pswitch_5a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_18

    .line 754
    :pswitch_66
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_18

    .line 757
    :pswitch_72
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 760
    :pswitch_7e
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_18

    .line 763
    :pswitch_86
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_18

    .line 766
    :pswitch_8e
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    .line 769
    :pswitch_96
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_18

    .line 772
    :pswitch_9f
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_18

    .line 775
    :pswitch_a8
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_18

    .line 734
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_2a
        :pswitch_36
        :pswitch_42
        :pswitch_4e
        :pswitch_5a
        :pswitch_66
        :pswitch_72
        :pswitch_7e
        :pswitch_86
        :pswitch_8e
        :pswitch_96
        :pswitch_9f
        :pswitch_a8
    .end packed-switch
.end method
