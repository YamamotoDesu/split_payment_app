import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("development") {
            dimension = "flavor-type"
            applicationId = "com.ioaholdings.mobile.dev"
            resValue(type = "string", name = "app_name", value = "Development App")
        }
        create("production") {
            dimension = "flavor-type"
            applicationId = "com.ioaholdings.mobile.prd"
            resValue(type = "string", name = "app_name", value = "Production App")
        }
    }
}