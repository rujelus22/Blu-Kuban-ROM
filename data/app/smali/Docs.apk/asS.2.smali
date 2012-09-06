.class public interface abstract annotation LasS;
.super Ljava/lang/Object;
.source "Named.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LasU;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LasS;
        a = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
