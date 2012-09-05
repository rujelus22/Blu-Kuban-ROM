.class public abstract Landroid/net/fourG/net4GConfiguration;
.super Ljava/lang/Object;
.source "net4GConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CURRENT:I = 0x1

.field public static final DISABLED:I = 0x2

.field public static final ENABLED:I = 0x3


# instance fields
.field protected m_nNetworkId:I

.field protected m_nPriority:I

.field protected m_nStatus:I


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
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkId()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Landroid/net/fourG/net4GConfiguration;->m_nNetworkId:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Landroid/net/fourG/net4GConfiguration;->m_nPriority:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Landroid/net/fourG/net4GConfiguration;->m_nStatus:I

    return v0
.end method

.method public setNetworkId(I)V
    .registers 2
    .parameter "NetworkId"

    .prologue
    .line 37
    iput p1, p0, Landroid/net/fourG/net4GConfiguration;->m_nNetworkId:I

    .line 38
    return-void
.end method

.method public setPriority(I)V
    .registers 2
    .parameter "Priority"

    .prologue
    .line 45
    iput p1, p0, Landroid/net/fourG/net4GConfiguration;->m_nPriority:I

    .line 46
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .parameter "status"

    .prologue
    .line 41
    iput p1, p0, Landroid/net/fourG/net4GConfiguration;->m_nStatus:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 50
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "net4GDeviceInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 53
    .local v0, none:Ljava/lang/String;
    const-string v2, "NetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GConfiguration;->m_nNetworkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GConfiguration;->m_nStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "priority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GConfiguration;->m_nStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
