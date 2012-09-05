.class public abstract Landroid/net/fourG/net4GDeviceInfo;
.super Ljava/lang/Object;
.source "net4GDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field m_strDeviceName:Ljava/lang/String;

.field m_strHwVersion:Ljava/lang/String;

.field m_strSwVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strHwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strSwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "net4GDeviceInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 36
    .local v0, none:Ljava/lang/String;
    const-string v2, "DeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strDeviceName:Ljava/lang/String;

    if-nez v2, :cond_39

    move-object v2, v0

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", HwVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strHwVersion:Ljava/lang/String;

    if-nez v2, :cond_3c

    move-object v2, v0

    :goto_23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", SwVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strSwVersion:Ljava/lang/String;

    if-nez v3, :cond_3f

    .end local v0           #none:Ljava/lang/String;
    :goto_31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 36
    .restart local v0       #none:Ljava/lang/String;
    :cond_39
    iget-object v2, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strDeviceName:Ljava/lang/String;

    goto :goto_14

    :cond_3c
    iget-object v2, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strHwVersion:Ljava/lang/String;

    goto :goto_23

    :cond_3f
    iget-object v0, p0, Landroid/net/fourG/net4GDeviceInfo;->m_strSwVersion:Ljava/lang/String;

    goto :goto_31
.end method
