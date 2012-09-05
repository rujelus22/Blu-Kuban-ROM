.class public Lcom/google/wireless/googlenav/proto/j2me/Geometry;
.super Ljava/lang/Object;


# static fields
.field public static final EFFICIENT_MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final GEOMETRY_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final GEOMETRY_PROTO_POLYGON:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final GEOMETRY_PROTO_POLY_LINE:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final IMPLICIT_LOCATION_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final MAP_INFO_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final MAP_TILE_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field public static final PIXEL_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x215

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v4, 0x115

    const/4 v5, 0x0

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->EFFICIENT_MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->PIXEL_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->GEOMETRY_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->GEOMETRY_PROTO_POLY_LINE:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->GEOMETRY_PROTO_POLYGON:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_INFO_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->IMPLICIT_LOCATION_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_TILE_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v6, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v4, v7, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->EFFICIENT_MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x121

    invoke-virtual {v0, v1, v6, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x121

    invoke-virtual {v0, v1, v7, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->PIXEL_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v6, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v4, v7, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->GEOMETRY_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v6, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x3

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->GEOMETRY_PROTO_POLY_LINE:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/4 v2, 0x7

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->GEOMETRY_PROTO_POLYGON:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xd

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->PIXEL_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0xe

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->EFFICIENT_MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->GEOMETRY_PROTO_POLY_LINE:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v8, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x223

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->GEOMETRY_PROTO_POLYGON:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x8

    invoke-virtual {v0, v8, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v8, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x223

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v8, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x423

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_INFO_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v4, v7, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->IMPLICIT_LOCATION_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_POINT_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x212

    invoke-virtual {v0, v1, v7, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x212

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/Geometry;->MAP_TILE_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v6, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21d

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v4, v7, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21e

    const/4 v2, 0x5

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Lcom/google/mobile/googlenav/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x224

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v8, v1, v5}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
