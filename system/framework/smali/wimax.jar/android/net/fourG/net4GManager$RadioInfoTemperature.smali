.class public abstract Landroid/net/fourG/net4GManager$RadioInfoTemperature;
.super Ljava/lang/Object;
.source "net4GManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/net4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RadioInfoTemperature"
.end annotation


# instance fields
.field public m_nMaxTemp:I

.field public m_nMinTemp:I

.field public m_nTemperature:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 702
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .registers 2

    .prologue
    .line 708
    iget v0, p0, Landroid/net/fourG/net4GManager$RadioInfoTemperature;->m_nTemperature:I

    return v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 716
    iget v0, p0, Landroid/net/fourG/net4GManager$RadioInfoTemperature;->m_nMaxTemp:I

    return v0
.end method

.method public getMin()I
    .registers 2

    .prologue
    .line 712
    iget v0, p0, Landroid/net/fourG/net4GManager$RadioInfoTemperature;->m_nMinTemp:I

    return v0
.end method

.method public isRadioOverheat()Z
    .registers 3

    .prologue
    .line 724
    iget v0, p0, Landroid/net/fourG/net4GManager$RadioInfoTemperature;->m_nTemperature:I

    const/16 v1, 0x78

    if-le v0, v1, :cond_8

    .line 725
    const/4 v0, 0x1

    .line 727
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public resetMinMax()Z
    .registers 2

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method
