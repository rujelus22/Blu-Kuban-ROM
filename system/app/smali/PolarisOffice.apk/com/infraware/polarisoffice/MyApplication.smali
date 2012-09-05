.class public Lcom/infraware/polarisoffice/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"

# interfaces
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarID;


# static fields
.field private static mButtonEnable:Z


# instance fields
.field private mSubToolbarDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/infraware/office/basetoolbar/SubToolbarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/infraware/office/basetoolbar/ToolbarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/infraware/polarisoffice/MyApplication;->mButtonEnable:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static isButtonEnable()Z
    .registers 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/infraware/polarisoffice/MyApplication;->mButtonEnable:Z

    return v0
.end method

.method public static setButtonEnable(Z)V
    .registers 1
    .parameter "isEnable"

    .prologue
    .line 26
    sput-boolean p0, Lcom/infraware/polarisoffice/MyApplication;->mButtonEnable:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getSubToolbarDataMapping()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/infraware/office/basetoolbar/SubToolbarItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getToolbarDataMapping()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/infraware/office/basetoolbar/ToolbarItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public initSubToolbarData()V
    .registers 9

    .prologue
    .line 104
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/4 v1, 0x1

    const v2, 0x7f03007a

    const v3, 0x7f060040

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x38

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x38

    const v2, 0x7f03007b

    const v3, 0x7f060041

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/4 v1, 0x2

    const v2, 0x7f030067

    const v3, 0x7f06004c

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/4 v1, 0x3

    const v2, 0x7f030068

    const v3, 0x7f060054

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/4 v1, 0x4

    const v2, 0x7f030064

    const v3, 0x7f060059

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/4 v1, 0x5

    const v2, 0x7f030065

    const v3, 0x7f06005a

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/4 v1, 0x6

    const v2, 0x7f030066

    const v3, 0x7f060061

    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/4 v1, 0x7

    const v2, 0x7f030066

    const v3, 0x7f060062

    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x8

    const v2, 0x7f03005c

    const v3, 0x7f060064

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x9

    const v2, 0x7f030060

    const v3, 0x7f06006a

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0xa

    const v2, 0x7f03006e

    const v3, 0x7f060072

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0xb

    const v2, 0x7f03006a

    const v3, 0x7f06007a

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0xc

    const v2, 0x7f03006d

    const v3, 0x7f06007e

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0xe

    const v2, 0x7f03006b

    const v3, 0x7f060083

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0xf

    const v2, 0x7f03006c

    const v3, 0x7f060084

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x10

    const v2, 0x7f03005d

    const v3, 0x7f06008b

    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x11

    const v2, 0x7f03005d

    const v3, 0x7f06008c

    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x12

    const v2, 0x7f03005e

    const v3, 0x7f06008e

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x13

    const v2, 0x7f030061

    const v3, 0x7f060098

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x14

    const v2, 0x7f030079

    const v3, 0x7f0600a0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x20

    const v2, 0x7f030077

    const v3, 0x7f0600d6

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x29

    const v2, 0x7f030078

    const v3, 0x7f0600d8

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x21

    const v2, 0x7f030072

    const v3, 0x7f0600e0

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x22

    const v2, 0x7f030070

    const v3, 0x7f0600ec

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x23

    const v2, 0x7f030071

    const v3, 0x7f0600ed

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x24

    const v2, 0x7f03005f

    const v3, 0x7f0600e8

    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x25

    const v2, 0x7f03005f

    const v3, 0x7f0600e9

    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x26

    const v2, 0x7f03006f

    const v3, 0x7f0600f3

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x27

    const v2, 0x7f03007c

    const v3, 0x7f060043

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x30

    const v2, 0x7f030073

    const v3, 0x7f0600a5

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x32

    const v2, 0x7f030069

    const v3, 0x7f0600b8

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x33

    const v2, 0x7f030063

    const v3, 0x7f0600c0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x34

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x34

    const v2, 0x7f030076

    const v3, 0x7f0600c4

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x35

    const v2, 0x7f030062

    const v3, 0x7f0600cb

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x36

    const v2, 0x7f030074

    const v3, 0x7f0600d1

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x37

    const v2, 0x7f030075

    const v3, 0x7f0600b1

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v6, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    const/16 v0, 0x39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    const/16 v1, 0x39

    const v2, 0x7f03007d

    const v3, 0x7f060042

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;-><init>(IIIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public initToolbarData()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const v10, 0x7f0801fc

    const v9, 0x7f0801f3

    const v8, 0x7f060082

    const v7, 0x7f06003f

    .line 52
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-direct {v3, v0, v4, v9, v7}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x38

    invoke-direct {v3, v0, v4, v9, v7}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/4 v4, 0x2

    const v5, 0x7f08016d

    const v6, 0x7f06004b

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/4 v4, 0x3

    const v5, 0x7f0801f4

    const v6, 0x7f060053

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/4 v4, 0x4

    const v5, 0x7f0801f5

    const v6, 0x7f060058

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/4 v4, 0x5

    const v5, 0x7f0801f5

    const v6, 0x7f060058

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/4 v4, 0x6

    const v5, 0x7f0801f6

    const v6, 0x7f060060

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/4 v4, 0x7

    const v5, 0x7f0801f6

    const v6, 0x7f060060

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x8

    const v5, 0x7f0801a9

    const v6, 0x7f060063

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x9

    const v5, 0x7f0801f7

    const v6, 0x7f060069

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0xa

    const v5, 0x7f0801f8

    const v6, 0x7f060071

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0xb

    const v5, 0x7f0801fa

    const v6, 0x7f060079

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0xc

    const v5, 0x7f0801fb

    const v6, 0x7f06007d

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0xd

    const v5, 0x7f08019a

    const v6, 0x7f060081

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v4, v10, v8}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0xf

    invoke-direct {v3, v0, v4, v10, v8}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x10

    const v5, 0x7f0801fd

    const v6, 0x7f06008a

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x11

    const v5, 0x7f0801fd

    const v6, 0x7f06008a

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x12

    const v5, 0x7f080177

    const v6, 0x7f06008d

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x13

    const v5, 0x7f0801fe

    const v6, 0x7f060097

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x14

    const v5, 0x7f080192

    const v6, 0x7f06009f

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x15

    const v5, 0x7f080219

    const v6, 0x7f0600a3

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x27

    invoke-direct {v3, v0, v4, v9, v7}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x20

    const v5, 0x7f0801d8

    const v6, 0x7f0600d5

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x29

    const v5, 0x7f0801d8

    const v6, 0x7f0600d7

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x21

    const v5, 0x7f08019f

    const v6, 0x7f0600df

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x22

    invoke-direct {v3, v0, v4, v10, v8}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x23

    invoke-direct {v3, v0, v4, v10, v8}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x24

    const v5, 0x7f0801ff

    const v6, 0x7f0600e7

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x25

    const v5, 0x7f0801ff

    const v6, 0x7f0600e7

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x26

    const v5, 0x7f08016d

    const v6, 0x7f0600f2

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x28

    const v5, 0x7f0801a3

    const v6, 0x7f0600ea

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x39

    invoke-direct {v3, v0, v4, v9, v7}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x30

    const v5, 0x7f0801a9

    const v6, 0x7f060063

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x31

    const v5, 0x7f080201

    const v6, 0x7f0600af

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x32

    const v5, 0x7f080202

    const v6, 0x7f0600b7

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x33

    const v5, 0x7f080203

    const v6, 0x7f0600bf

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x34

    const v5, 0x7f0801c9

    const v6, 0x7f0600c3

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x35

    const v5, 0x7f08011a

    const v6, 0x7f0600ca

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x36

    const v5, 0x7f080204

    const v6, 0x7f0600d0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/basetoolbar/ToolbarItem;

    const/16 v4, 0x37

    const v5, 0x7f0801fe

    const v6, 0x7f060097

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/infraware/office/basetoolbar/ToolbarItem;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/MyApplication;->mToolbarDataMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/MyApplication;->mSubToolbarDataMap:Ljava/util/HashMap;

    .line 33
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/MyApplication;->initToolbarData()V

    .line 34
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/MyApplication;->initSubToolbarData()V

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 41
    return-void
.end method
